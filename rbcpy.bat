@echo off

REM ��å�������ɽ������
echo "�����򳫻Ϥ��ޤ���"
echo.

REM D�ɥ饤�֤Υե�����ĥ꡼����������
set logdate=%date:~0,4%-%date:~5,2%-%date:~8,2%
tree /f D:\ > "D:\log\tree-log-%logdate%.txt"

REM ���ԡ����Ȥʤ�D�ɥ饤�֤ȥ��ԡ���Ȥʤ�E�ɥ饤�֤Υѥ�����ꤹ��
set source=D:\
set destination=E:\




REM Application����Υե������E�ɥ饤�֤˥��ԡ�����
echo "Application��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\Application %destination%\Application /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM C����Υե������E�ɥ饤�֤˥��ԡ�����
echo "C��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\C %destination%\C /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM drivers����Υե������E�ɥ饤�֤˥��ԡ�����
echo "drivers��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\drivers %destination%\drivers /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Files����Υե������E�ɥ饤�֤˥��ԡ�����
echo "Files��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\Files %destination%\Files /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN" 
echo.

REM Game/Steam/steamapps/workshop����Υե������E�ɥ饤�֤˥��ԡ�����
echo " Game/Steam/steamapps/workshop��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\Game\Steam\steamapps\workshop %destination%\Game\Steam\steamapps\workshop /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/MicrosoftFlightSimulator����Υե������E�ɥ饤�֤˥��ԡ�����
echo " Game/Steam/steamapps/common/Beat Saber��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\Game\Steam\steamapps\common\MicrosoftFlightSimulator %destination%\Game\Steam\steamapps\common\MicrosoftFlightSimulator /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/Beat Saber����Υե������E�ɥ饤�֤˥��ԡ�����
echo " Game/Steam/steamapps/common/Beat Saber��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\Game\Steam\steamapps\common\"Beat Saber" %destination%\Game\Steam\steamapps\common\"Beat Saber" /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/assettocorsa����Υե������E�ɥ饤�֤˥��ԡ�����
echo " Game/Steam/steamapps/common/Beat Saber��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\Game\Steam\steamapps\common\assettocorsa %destination%\Game\Steam\steamapps\common\assettocorsa /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/wallpaper_engine����Υե������E�ɥ饤�֤˥��ԡ�����
echo " Game/Steam/steamapps/common/Beat Saber��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\Game\Steam\steamapps\common\wallpaper_engine %destination%\Game\Steam\steamapps\common\wallpaper_engine /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.





REM D�ɥ饤�֤�Game�ե�����ĥ꡼����������
tree D:\Game > "D:\log\tree-game-log-%logdate%.txt"

REM GIMP 2����Υե������E�ɥ饤�֤˥��ԡ�����
echo "GIMP 2��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\"GIMP 2" %destination%\"GIMP 2" /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM players����Υե������E�ɥ饤�֤˥��ԡ�����
echo "players��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\players %destination%\players /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Program Files����Υե������E�ɥ饤�֤˥��ԡ�����
echo "Program Files��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\"Program Files" %destination%\"Program Files" /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM WindowsApps����Υե������E�ɥ饤�֤˥��ԡ�����
echo "WindowsApps��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\WindowsApps %destination%\WindowsApps /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM WindowsFile����Υե������E�ɥ饤�֤˥��ԡ�����
echo "WindowsFile��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\WindowsFile %destination%\WindowsFile /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM STVLERec����Υե������E�ɥ饤�֤˥��ԡ�����
echo "STVLERec��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\STVLERec %destination%\STVLERec\D /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM log����Υե������E�ɥ饤�֤˥��ԡ�����
echo "log��E�ɥ饤�֤˥��ԡ����Ƥ��ޤ���"
robocopy %source%\log %destination%\log /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM ��å�������ɽ������
echo "��������λ���ޤ�����"
