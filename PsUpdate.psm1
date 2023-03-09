#################################################################
# PowerShell 更新
#################################################################
Function PsUpdate([switch]$Force){
	if((Get-Command winget -ea SilentlyContinue) -and (-Not $Force)){
		winget install --id Microsoft.Powershell --source winget
	}
	else{
		Invoke-Expression "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI"
	}
}


