$ErrorActionPreference = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/mattn/efm-langserver/releases/download/v0.0.44/efm-langserver_v0.0.44_windows_amd64.zip'
$checksum       = '1A4ACBF25ED14F89A32EB17B1B0B9F0B6E92B47C799475B818913C8AACA22AA2'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage $packageName $url $toolsDir -checksum $checksum -checksumType $checksumType
