$ErrorActionPreference  = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/lars-berger/GlazeWM/releases/download/v1.11.1/GlazeWM_x86_1.11.1.exe'
$url64          = 'https://github.com/lars-berger/GlazeWM/releases/download/v1.11.1/GlazeWM_x64_1.11.1.exe'
$checksum       = 'c47d0f53228441b3e010456ae87644eded80daa72a1a2a16b2d96fedc7225246'
$checksumType   = 'sha256'
$checksum64     = 'ddf137ad32f608b3d400a2d204f958145e15878844d01702e6a10093b503b959'
$checksumType64 = 'sha256'

Get-ChocolateyWebFile $packageName "$toolsDir/${packageName}.exe" $url $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64
