# モジュール名
$ModuleName = "PsUpdate"

# モジュール Path
$ModulePath = Join-Path (Split-Path $PROFILE -Parent) "Modules"

# モジュールを配置する Path
$RemovePath = Join-Path $ModulePath $ModuleName

# ディレクトリ削除
if( Test-Path $RemovePath ){
	Remove-Item $RemovePath -Force -Recurse
}
