#################################################################
# PowerShell 更新
#################################################################
Function PsUpdate(){
	if(Get-Command winget -ea SilentlyContinue){
		winget install --id Microsoft.Powershell --source winget
	}
	else{
		Invoke-Expression "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI"
	}
}


