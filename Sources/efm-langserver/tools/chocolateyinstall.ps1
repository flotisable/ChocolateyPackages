$ErrorActionPreference = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/mattn/efm-langserver/releases/download/v0.0.53/efm-langserver_v0.0.53_windows_amd64.zip'
$checksum       = 'a8854e2bb0e6c46bd7ce54a5cd2fce63b8f34517eb021f1284570a48b3f288f6'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage $packageName $url $toolsDir -checksum $checksum -checksumType $checksumType
