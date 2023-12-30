$ErrorActionPreference = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/glazerdesktop/GlazeWM/releases/download/v2.0.3/GlazeWM_x86_2.0.3.exe'
$url64          = 'https://github.com/glazerdesktop/GlazeWM/releases/download/v2.0.3/GlazeWM_x64_2.0.3.exe'
$checksum       = '5620145171ddcec4e5d06301cdc496dacec01dc308cbbb73b2b194ed0eb73357'
$checksumType   = 'sha256'
$checksum64     = 'ca27c28b3adf9c41adf8830017469e322402aec3e31b306cb95d34b5d71e74de'
$checksumType64 = 'sha256'

Get-ChocolateyWebFile $packageName "$toolsDir/${packageName}.exe" $url $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64
