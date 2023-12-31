$ErrorActionPreference = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/glzr-io/glazewm/releases/download/v2.1.0/GlazeWM_x86_2.1.0.exe'
$url64          = 'https://github.com/glzr-io/glazewm/releases/download/v2.1.0/GlazeWM_x64_2.1.0.exe'
$checksum       = 'bd2f78671088dd87471c8cc0bd321a8b04128a79bcb895d274dc0944c90e3af8'
$checksumType   = 'sha256'
$checksum64     = 'bd5036e984c25de1d7f59c7dec98cb4e7270e3f3f133ce1a885dc19b3cf9624d'
$checksumType64 = 'sha256'

Get-ChocolateyWebFile $packageName "$toolsDir/${packageName}.exe" $url $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64
