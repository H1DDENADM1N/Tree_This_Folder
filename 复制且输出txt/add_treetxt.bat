@echo off
Net session >nul 2>&1 || powershell start-process add_treetxt.bat -verb runas
SETLOCAL EnableExtensions
: ������װĿ¼
md "C:\Program Files\Tree This Folder"
:: �����ļ�����װĿ¼
copy "%~dp0treetxt.ico" "C:\Program Files\Tree This Folder\treetxt.ico"
copy "%~dp0treetxt.bat" "C:\Program Files\Tree This Folder\treetxt.bat"
copy "%~dp0remove_treetxt.bat" "C:\Program Files\Tree This Folder\remove_treetxt.bat"
:: ���ļ��б���������Ҽ��˵���
reg import "%~dp0treetxt.reg"

echo �Ҽ��˵�������ӡ�
pause
ENDLOCAL
