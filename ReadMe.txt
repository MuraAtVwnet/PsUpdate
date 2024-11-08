PowerShell (Core) の更新をします

Windows 11 と Windows Server 2019/2022 で動作確認しました

# 以下コマンドでオンラインインストールできます

$ModuleName = "PsUpdate"
$GitHubName = "MuraAtVwnet"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/$GitHubName/$ModuleName/master/OnlineInstall.ps1 -OutFile ~/OnlineInstall.ps1
& ~/OnlineInstall.ps1

