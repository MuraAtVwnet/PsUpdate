■ これは何
PowerShell (Core) の更新するスクリプトです

Windows 11 と Windows Server 2019/2022 で動作確認しました

# 以下コマンドで更新するスクリプトをオンラインインストールできます

$ModuleName = "PsUpdate"
$GitHubName = "MuraAtVwnet"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/$GitHubName/$ModuleName/master/OnlineInstall.ps1 -OutFile ~/OnlineInstall.ps1
& ~/OnlineInstall.ps1

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


