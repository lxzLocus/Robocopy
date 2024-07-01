@echo off

REM メッセージを表示する
echo "処理を開始します。"
echo.


REM Cドライブのフォルダツリーを生成する
set logdate=%date:~0,4%-%date:~5,2%-%date:~8,2%
tree /f C:\ > "E:\.BackUp\log\C\C-tree-log-%logdate%.txt"

REM Dドライブのフォルダツリーを生成する
set logdate=%date:~0,4%-%date:~5,2%-%date:~8,2%
tree /f D:\ > "E:\.BackUp\log\D\D-tree-log-%logdate%.txt"

REM EドライブのWorkSpaceフォルダツリーを生成する
set logdate=%date:~0,4%-%date:~5,2%-%date:~8,2%
tree /f E:\Files\Workspace > "E:\.BackUp\log\Workspace\WS-tree-log-%logdate%.txt"

REM コピー元となるDドライブとコピー先となるEドライブのパスを指定する
set source_C=C:\
set source_D=D:\
set source_WS=E:\Files\Workspace\

set destination=E:\.BackUp\
set destination_NAS=W:\Workspace\




REM Applicationの中のファイルをEドライブにコピーする
echo "ApplicationをEドライブにコピーしています。"
robocopy %source_D%\Application %destination%\D\Application /E /mir /R:3 /W:0 /LOG+:E:\.BackUp\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Cの中のファイルをEドライブにコピーする
echo "CをEドライブにコピーしています。"
robocopy %source_D%\C %destination%\D\C /E /mir /R:3 /W:0 /LOG+:E:\.BackUp\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN"
echo.

REM Filesの中のファイルをEドライブにコピーする
echo "FilesをEドライブにコピーしています。"
robocopy %source_D%\Files %destination%\D\Files /E /mir /R:3 /W:0 /LOG+:E:\.BackUp\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN" "D:\Files\Workspace" "E:\Files\Workspace"/XJ
echo.

REM WindowsFileの中のファイルをEドライブにコピーする
echo "WindowsFileをEドライブにコピーしています。"
robocopy %source_D%\WindowsFile %destination%\D\WindowsFile /E /mir /R:3 /W:0 /LOG+:E:\.BackUp\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN" 
echo.


REM Workspaceの中のファイルをNASにコピーする
echo "WorkspaceをNASにコピーしています。"
robocopy %source_WS% %destination_NAS% /E /mir /R:3 /W:0 /LOG+:E:\.BackUp\log\robocopy-log-%logdate%.txt /DCOPY:DAT /MT:19 /xd "System Volume Information" "$RECYCLE.BIN" "E:\Files\Workspace\LLM\text-generation-webui-main\models"
echo.



REM メッセージを表示する
echo "処理が完了しました。"
