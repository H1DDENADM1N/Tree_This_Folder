@echo off
Net session >nul 2>&1 || powershell start-process add_treeMDorTXT.bat -verb runas
SETLOCAL EnableExtensions

:: ������װĿ¼
md "C:\Program Files\Tree This Folder"
:: �����ļ�����װĿ¼
copy "%~dp0TreeThisFolder.ico" "C:\Program Files\Tree This Folder\TreeThisFolder.ico"
copy "%~dp0..\���������txt\main0.bat" "C:\Program Files\Tree This Folder\treetxt.bat"
copy "%~dp0..\���������md\treemd.bat" "C:\Program Files\Tree This Folder\treemd.bat"
copy "%~dp0..\���������md\treemd.exe" "C:\Program Files\Tree This Folder\treemd.exe"
copy "%~dp0remove_treeMDorTXT.bat" "C:\Program Files\Tree This Folder\remove_treeMDorTXT.bat"
:: ���ļ��б���������Ҽ��˵���
reg import "%~dp0�����ļ��нṹ_Ŀ¼.reg"
reg import "%~dp0����txt_����.reg"
reg import "%~dp0����md_����.reg"
echo �Ҽ��˵�������ӡ�
pause
ENDLOCAL
