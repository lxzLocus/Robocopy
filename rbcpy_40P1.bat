@echo off

REM ���b�Z�[�W��\������
echo "�������J�n���܂��B"
echo.


REM C�h���C�u�̃t�H���_�c���[�𐶐�����
set logdate=%date:~0,4%-%date:~5,2%-%date:~8,2%
tree /f C:\ > "E:\.BackUp\log\C\C-tree-log-%logdate%.txt"

REM D�h���C�u�̃t�H���_�c���[�𐶐�����
set logdate=%date:~0,4%-%date:~5,2%-%date:~8,2%
tree /f D:\ > "E:\.BackUp\log\D\D-tree-log-%logdate%.txt"

REM E�h���C�u��WorkSpace�t�H���_�c���[�𐶐�����
set logdate=%date:~0,4%-%date:~5,2%-%date:~8,2%
tree /f E:\Files\Workspace > "E:\.BackUp\log\Workspace\WS-tree-log-%logdate%.txt"

REM �R�s�[���ƂȂ�D�h���C�u�ƃR�s�[��ƂȂ�E�h���C�u�̃p�X���w�肷��
set source_C=C:\
set source_D=D:\
set source_WS=E:\Files\Workspace\

set destination=E:\.BackUp\
set destination_NAS=W:\Workspace\




REM Application�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "Application��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source_D%\Application %destination%\D\Application /E /mir /R:3 /W:0 /LOG+:E:\.BackUp\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM C�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "C��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source_D%\C %destination%\D\C /E /mir /R:3 /W:0 /LOG+:E:\.BackUp\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Files�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "Files��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source_D%\Files %destination%\D\Files /E /mir /R:3 /W:0 /LOG+:E:\.BackUp\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN" "D:\Files\Workspace" "E:\Files\Workspace"/XJ
echo.

REM WindowsFile�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "WindowsFile��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source_D%\WindowsFile %destination%\D\WindowsFile /E /mir /R:3 /W:0 /LOG+:E:\.BackUp\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN" 
echo.


REM Workspace�̒��̃t�@�C����NAS�ɃR�s�[����
echo "Workspace��NAS�ɃR�s�[���Ă��܂��B"
robocopy %source_WS% %destination_NAS% /E /mir /R:3 /W:0 /LOG+:E:\.BackUp\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN" "E:\Files\Workspace\LLM\text-generation-webui-main\models"
echo.



REM ���b�Z�[�W��\������
echo "�������������܂����B"
