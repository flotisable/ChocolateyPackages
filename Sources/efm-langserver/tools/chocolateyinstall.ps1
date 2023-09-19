$ErrorActionPreference = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/mattn/efm-langserver/releases/download/v0.0.48/efm-langserver_v0.0.48_windows_amd64.zip'
$checksum       = 'a54860023879da7194f3567ccb240009f20638d8a9fbe0434d6f95439c5aa3d1'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage $packageName $url $toolsDir -checksum $checksum -checksumType $checksumType
