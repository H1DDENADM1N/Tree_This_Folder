@echo off
Net session >nul 2>&1 || powershell start-process add_treemd.bat -verb runas
SETLOCAL EnableExtensions
:: ������װĿ¼
md "C:\Program Files\Tree This Folder"
:: �����ļ�����װĿ¼
copy "%~dp0treemd.ico" "C:\Program Files\Tree This Folder\treemd.ico"
copy "%~dp0treemd.bat" "C:\Program Files\Tree This Folder\treemd.bat"
copy "%~dp0treemd.exe" "C:\Program Files\Tree This Folder\treemd.exe"
copy "%~dp0remove_treemd.bat" "C:\Program Files\Tree This Folder\remove_treemd.bat"
:: ���ļ��б���������Ҽ��˵���
reg import "%~dp0treemd.reg"

echo �Ҽ��˵�������ӡ�
pause
ENDLOCAL
