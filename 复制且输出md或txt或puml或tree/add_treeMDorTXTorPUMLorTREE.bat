@echo off
Net session >nul 2>&1 || powershell start-process add_treeMDorTXTorPUMLorTREE.bat -verb runas
SETLOCAL EnableExtensions

:: ������װĿ¼
md "C:\Program Files\Tree This Folder"
:: �����ļ�����װĿ¼
copy "%~dp0TreeThisFolder.ico" "C:\Program Files\Tree This Folder\TreeThisFolder.ico"
copy "%~dp0..\���������txt\treetxt.bat" "C:\Program Files\Tree This Folder\treetxt.bat"
copy "%~dp0..\���������md\treemd.bat" "C:\Program Files\Tree This Folder\treemd.bat"
copy "%~dp0..\���������md\treemd.exe" "C:\Program Files\Tree This Folder\treemd.exe"
copy "%~dp0..\���������puml\tree2puml.bat" "C:\Program Files\Tree This Folder\tree2puml.bat"
copy "%~dp0..\���������puml\tree2puml.exe" "C:\Program Files\Tree This Folder\tree2puml.exe"
copy "%~dp0..\���������tree\treetree.bat" "C:\Program Files\Tree This Folder\treetree.bat"
copy "%~dp0remove_treeMDorTXTorPUML.bat" "C:\Program Files\Tree This Folder\remove_treeMDorTXTorPUML.bat"
:: ���ļ��б���������Ҽ��˵���
reg import "%~dp0�����ļ��нṹ_Ŀ¼.reg"
reg import "%~dp0����txt_����.reg"
reg import "%~dp0����md_����.reg"
reg import "%~dp0����plantuml_����.reg"
reg import "%~dp0����tree_����.reg"
echo �Ҽ��˵�������ӡ�
pause
ENDLOCAL
