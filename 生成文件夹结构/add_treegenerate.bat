@echo off
Net session >nul 2>&1 || powershell start-process add_treegenerate.bat -verb runas
SETLOCAL EnableExtensions

:: ������װĿ¼
md "C:\Program Files\Tree This Folder"
:: �����ļ�����װĿ¼
copy "%~dp0TreeThisFolder.ico" "C:\Program Files\Tree This Folder\TreeThisFolder.ico"
copy "%~dp0treetxt.bat" "C:\Program Files\Tree This Folder\treetxt.bat"
copy "%~dp0treemd.bat" "C:\Program Files\Tree This Folder\treemd.bat"
copy "%~dp0..\binary\treemd.exe" "C:\Program Files\Tree This Folder\treemd.exe"
copy "%~dp0tree2puml.bat" "C:\Program Files\Tree This Folder\tree2puml.bat"
copy "%~dp0..\binary\tree2puml.exe" "C:\Program Files\Tree This Folder\tree2puml.exe"
copy "%~dp0treetree.bat" "C:\Program Files\Tree This Folder\treetree.bat"
copy "%~dp0treeseedir.bat" "C:\Program Files\Tree This Folder\treeseedir.bat"
copy "%~dp0..\binary\treeseedir.exe" "C:\Program Files\Tree This Folder\treeseedir.exe"
copy "%~dp0remove_treegenerate.bat" "C:\Program Files\Tree This Folder\remove_treegenerate.bat"
:: ���ļ��б���������Ҽ��˵���
reg import "%~dp0treegenerate.reg"
echo �Ҽ��˵�������ӡ�
pause
ENDLOCAL
