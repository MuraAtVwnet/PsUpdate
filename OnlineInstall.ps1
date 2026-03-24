# Online installer

$ModuleName = "PsUpdate"
$GitHubName = "MuraAtVwnet"

$HomeDirectory = "~/"
$Module = $ModuleName + ".psm1"
$Installer = "Install" + $ModuleName + ".ps1"
$Uninstaller = "Uninstall" + $ModuleName + ".ps1"
$Vertion = "Vertion" + $ModuleName + ".txt"
$GithubCommonURI = "https://raw.githubusercontent.com/$GitHubName/$ModuleName/refs/heads/main/"
$OnlineInstaller = $HomeDirectory + "OnlineInstall.ps1"

$URI = $GithubCommonURI + $Module
$ModuleFile = $HomeDirectory + $Module
Invoke-WebRequest -Uri $URI -OutFile $ModuleFile

$URI = $GithubCommonURI + "Install.ps1"
$InstallerFile = $HomeDirectory + $Installer
Invoke-WebRequest -Uri $URI -OutFile $InstallerFile

$URI = $GithubCommonURI + "Uninstall.ps1"
$OutFile = $HomeDirectory + $Uninstaller
Invoke-WebRequest -Uri $URI -OutFile $OutFile

$URI = $GithubCommonURI + "Vertion.txt"
$OutFile = $HomeDirectory + $Vertion
Invoke-WebRequest -Uri $URI -OutFile $OutFile

& $InstallerFile

Remove-Item $ModuleFile
Remove-Item $InstallerFile
Remove-Item $OnlineInstaller

