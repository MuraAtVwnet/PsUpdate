■ これは何
PowerShell (Core) の更新するスクリプトです

Windows 11 と Windows Server 2019/2022 で動作確認しました

■ スクリプトインストール方法
--- 以下を PowerShell プロンプトにコピペ ---

$ModuleName = "PsUpdate"
$GitHubName = "MuraAtVwnet"
$URI = "https://raw.githubusercontent.com/$GitHubName/$ModuleName/refs/heads/main/OnlineInstall.ps1"
$OutFile = "~/OnlineInstall.ps1"
Invoke-WebRequest -Uri $URI -OutFile $OutFile
& $OutFile


■ 使い方
PowerShell プロンプトで以下コマンドを入力してください

PsUpdate  (ps[TAB])で補完されます

更新がインターネット上に公開されていれば、PowerShell を更新します


■ オプション

-Force
強制更新します
PowerShell の更新でエラーになる場合に強制更新できるかも

-VertionCheck
スクリプトの更新をチェックし、新しいバージョンが公開されていたらスクリプトを更新します


■ スクリプトアンインストール方法
--- 以下を PowerShell プロンプトにコピペ ---

~/UninstallMakeOnlineInstallKit.ps1


■ Windows PowerShell を使っている方へ
Windows PowerShell でスクリプトがエラーになって実行出来ない場合は以下コマンドを PowerShell のプロンプトにコピペしてください

if((Get-ExecutionPolicy) -ne 'RemoteSigned'){Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force}


■ GitHub
以下リポジトリで公開しています
https://github.com/MuraAtVwnet/MakeOnlineInstallKit
git@github.com:MuraAtVwnet/MakeOnlineInstallKit.git


■ リポジトリ内モジュール説明

AddCode.ps1
	オンラインインストール用組み込みコード
Install.ps1
	インストーラー
MakeOnlineInstallKit.psm1
	モジュール本体
OnlineInstall.ps1
	オンラインインストーラー
Uninstall.ps1
	アンインストーラー
Vertion.txt
	バージョンチェックファイル
Readme.txt
	このファイル

