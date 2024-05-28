@echo off

REM メッセージを表示する
echo "処理を開始します。"
echo.

REM Dドライブのフォルダツリーを生成する
set logdate=%date:~0,4%-%date:~5,2%-%date:~8,2%
tree /f D:\ > "D:\log\tree-log-%logdate%.txt"

REM コピー元となるDドライブとコピー先となるEドライブのパスを指定する
set source=D:\
set destination=E:\




REM Applicationの中のファイルをEドライブにコピーする
echo "ApplicationをEドライブにコピーしています。"
robocopy %source%\Application %destination%\Application /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Cの中のファイルをEドライブにコピーする
echo "CをEドライブにコピーしています。"
robocopy %source%\C %destination%\C /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM driversの中のファイルをEドライブにコピーする
echo "driversをEドライブにコピーしています。"
robocopy %source%\drivers %destination%\drivers /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Filesの中のファイルをEドライブにコピーする
echo "FilesをEドライブにコピーしています。"
robocopy %source%\Files %destination%\Files /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN" 
echo.

REM Game/Steam/steamapps/workshopの中のファイルをEドライブにコピーする
echo " Game/Steam/steamapps/workshopをEドライブにコピーしています。"
robocopy %source%\Game\Steam\steamapps\workshop %destination%\Game\Steam\steamapps\workshop /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/MicrosoftFlightSimulatorの中のファイルをEドライブにコピーする
echo " Game/Steam/steamapps/common/Beat SaberをEドライブにコピーしています。"
robocopy %source%\Game\Steam\steamapps\common\MicrosoftFlightSimulator %destination%\Game\Steam\steamapps\common\MicrosoftFlightSimulator /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/Beat Saberの中のファイルをEドライブにコピーする
echo " Game/Steam/steamapps/common/Beat SaberをEドライブにコピーしています。"
robocopy %source%\Game\Steam\steamapps\common\"Beat Saber" %destination%\Game\Steam\steamapps\common\"Beat Saber" /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/assettocorsaの中のファイルをEドライブにコピーする
echo " Game/Steam/steamapps/common/Beat SaberをEドライブにコピーしています。"
robocopy %source%\Game\Steam\steamapps\common\assettocorsa %destination%\Game\Steam\steamapps\common\assettocorsa /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Game/Steam/steamapps/common/wallpaper_engineの中のファイルをEドライブにコピーする
echo " Game/Steam/steamapps/common/Beat SaberをEドライブにコピーしています。"
robocopy %source%\Game\Steam\steamapps\common\wallpaper_engine %destination%\Game\Steam\steamapps\common\wallpaper_engine /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.





REM DドライブのGameフォルダツリーを生成する
tree D:\Game > "D:\log\tree-game-log-%logdate%.txt"

REM GIMP 2の中のファイルをEドライブにコピーする
echo "GIMP 2をEドライブにコピーしています。"
robocopy %source%\"GIMP 2" %destination%\"GIMP 2" /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM playersの中のファイルをEドライブにコピーする
echo "playersをEドライブにコピーしています。"
robocopy %source%\players %destination%\players /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Program Filesの中のファイルをEドライブにコピーする
echo "Program FilesをEドライブにコピーしています。"
robocopy %source%\"Program Files" %destination%\"Program Files" /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM WindowsAppsの中のファイルをEドライブにコピーする
echo "WindowsAppsをEドライブにコピーしています。"
robocopy %source%\WindowsApps %destination%\WindowsApps /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM WindowsFileの中のファイルをEドライブにコピーする
echo "WindowsFileをEドライブにコピーしています。"
robocopy %source%\WindowsFile %destination%\WindowsFile /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM STVLERecの中のファイルをEドライブにコピーする
echo "STVLERecをEドライブにコピーしています。"
robocopy %source%\STVLERec %destination%\STVLERec\D /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM logの中のファイルをEドライブにコピーする
echo "logをEドライブにコピーしています。"
robocopy %source%\log %destination%\log /E /mir /R:3 /W:0 /LOG+:D:\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM メッセージを表示する
echo "処理が完了しました。"
