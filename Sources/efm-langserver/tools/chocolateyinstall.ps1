$ErrorActionPreference = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/mattn/efm-langserver/releases/download/v0.0.50/efm-langserver_v0.0.50_windows_amd64.zip'
$checksum       = '9f82e655ff764a058e7720b0d3d8065eb32d58b380c346ddbee2e17bb611b576'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage $packageName $url $toolsDir -checksum $checksum -checksumType $checksumType
