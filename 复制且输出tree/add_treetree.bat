@echo off
Net session >nul 2>&1 || powershell start-process add_treetree.bat -verb runas
SETLOCAL EnableExtensions
: ������װĿ¼
md "C:\Program Files\Tree This Folder"
:: �����ļ�����װĿ¼
copy "%~dp0treetree.ico" "C:\Program Files\Tree This Folder\treetree.ico"
copy "%~dp0treetree.bat" "C:\Program Files\Tree This Folder\treetree.bat"
copy "%~dp0remove_treetree.bat" "C:\Program Files\Tree This Folder\remove_treetree.bat"
:: ���ļ��б���������Ҽ��˵���
reg import "%~dp0treetree.reg"

echo �Ҽ��˵�������ӡ�
pause
ENDLOCAL
