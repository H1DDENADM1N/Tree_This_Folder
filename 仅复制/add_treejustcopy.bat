@echo off
Net session >nul 2>&1 || powershell start-process add_treejustcopy.bat -verb runas
SETLOCAL EnableExtensions
: ������װĿ¼
md "C:\Program Files\Tree This Folder"
:: �����ļ�����װĿ¼
copy "%~dp0treejustcopy.ico" "C:\Program Files\Tree This Folder\treejustcopy.ico"
copy "%~dp0treejustcopy.bat" "C:\Program Files\Tree This Folder\treejustcopy.bat"
copy "%~dp0remove_treejustcopy.bat" "C:\Program Files\Tree This Folder\remove_treejustcopy.bat"
:: ���ļ��б���������Ҽ��˵���
reg import "%~dp0treejustcopy.reg"

echo �Ҽ��˵�������ӡ�
pause
ENDLOCAL
