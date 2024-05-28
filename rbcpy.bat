@echo off

REM ���b�Z�[�W��\������
echo "�������J�n���܂��B"
echo.

REM D�h���C�u�̃t�H���_�c���[�𐶐�����
set logdate=%date:~0,4%-%date:~5,2%-%date:~8,2%
tree /f D:\ > "D:\log\tree-log-%logdate%.txt"

REM �R�s�[���ƂȂ�D�h���C�u�ƃR�s�[��ƂȂ�E�h���C�u�̃p�X���w�肷��
set source=D:\
set destination=E:\




REM Application�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "Application��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\Application %destination%\Application /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM C�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "C��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\C %destination%\C /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM drivers�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "drivers��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\drivers %destination%\drivers /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Files�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "Files��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\Files %destination%\Files /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN" 
echo.

REM Game/Steam/steamapps/workshop�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo " Game/Steam/steamapps/workshop��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\Game\Steam\steamapps\workshop %destination%\Game\Steam\steamapps\workshop /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/MicrosoftFlightSimulator�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo " Game/Steam/steamapps/common/Beat Saber��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\Game\Steam\steamapps\common\MicrosoftFlightSimulator %destination%\Game\Steam\steamapps\common\MicrosoftFlightSimulator /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/Beat Saber�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo " Game/Steam/steamapps/common/Beat Saber��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\Game\Steam\steamapps\common\"Beat Saber" %destination%\Game\Steam\steamapps\common\"Beat Saber" /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/assettocorsa�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo " Game/Steam/steamapps/common/Beat Saber��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\Game\Steam\steamapps\common\assettocorsa %destination%\Game\Steam\steamapps\common\assettocorsa /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/wallpaper_engine�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo " Game/Steam/steamapps/common/Beat Saber��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\Game\Steam\steamapps\common\wallpaper_engine %destination%\Game\Steam\steamapps\common\wallpaper_engine /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.





REM D�h���C�u��Game�t�H���_�c���[�𐶐�����
tree D:\Game > "D:\log\tree-game-log-%logdate%.txt"

REM GIMP 2�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "GIMP 2��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\"GIMP 2" %destination%\"GIMP 2" /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM players�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "players��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\players %destination%\players /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Program Files�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "Program Files��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\"Program Files" %destination%\"Program Files" /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM WindowsApps�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "WindowsApps��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\WindowsApps %destination%\WindowsApps /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM WindowsFile�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "WindowsFile��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\WindowsFile %destination%\WindowsFile /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM STVLERec�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "STVLERec��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\STVLERec %destination%\STVLERec\D /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM log�̒��̃t�@�C����E�h���C�u�ɃR�s�[����
echo "log��E�h���C�u�ɃR�s�[���Ă��܂��B"
robocopy %source%\log %destination%\log /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM ���b�Z�[�W��\������
echo "�������������܂����B"
