@echo off
Net session >nul 2>&1 || powershell start-process remove_treegenerate.bat -verb runas
SETLOCAL EnableExtensions

:: ɾ��֮ǰ���ļ��б�������ӵ�ע�����
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Item0" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Item1" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Item2" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Item3" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Item4" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Item5" /f
REG DELETE "HKEY_CLASSES_ROOT\Directory\Background\shell\Item0" /f
:: ��ʱ
ping 127.0.0.1 -n 2 >nul
echo �Ҽ��˵�����ɾ����
:: ɾ����װ�ļ�
del /s /q "C:\Program Files\Tree This Folder\TreeThisFolder.ico"

del /s /q "C:\Program Files\Tree This Folder\bats\treetxt.bat"
del /s /q "C:\Program Files\Tree This Folder\bats\treemd.bat"
del /s /q "C:\Program Files\Tree This Folder\bats\tree2puml.bat"
del /s /q "C:\Program Files\Tree This Folder\bats\treetree.bat"
del /s /q "C:\Program Files\Tree This Folder\bats\treeseedir.bat"
del /s /q "C:\Program Files\Tree This Folder\bats\tree2json.bat"
rd "C:\Program Files\Tree This Folder\bats\"
:: ��Ҫ�� rd /s /q "C:\Program Files\Tree This Folder\bats\" ����ֹ�� �����ļ��нṹ �����ƻ�


rd /s /q "C:\Program Files\Tree This Folder\scripts\"

rd /s /q "C:\Program Files\Tree This Folder\runtime"


rd /s /q "C:\Program Files\Tree This Folder\site-packages"

del /s /q "C:\Program Files\Tree This Folder\remove_treegenerate.bat"
pause
ENDLOCAL