$ErrorActionPreference = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/glazerdesktop/GlazeWM/releases/download/v2.0.1/GlazeWM_x86_2.0.1.exe'
$url64          = 'https://github.com/glazerdesktop/GlazeWM/releases/download/v2.0.1/GlazeWM_x64_2.0.1.exe'
$checksum       = '5ae0b93c4c98e7a6d66deb753bf210b64cf539099558f5a1b0aa40278f7fc6c9'
$checksumType   = 'sha256'
$checksum64     = '0212458d22a9c698493589221706a35a8e72927ff57c3f2475e991aad49a662d'
$checksumType64 = 'sha256'

Get-ChocolateyWebFile $packageName "$toolsDir/${packageName}.exe" $url $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64
