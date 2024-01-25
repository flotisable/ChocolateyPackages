$ErrorActionPreference = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/glzr-io/glazewm/releases/download/v2.1.1/GlazeWM_x86_2.1.1.exe'
$url64          = 'https://github.com/glzr-io/glazewm/releases/download/v2.1.1/GlazeWM_x64_2.1.1.exe'
$checksum       = '0cbe283e9890b0b465e24196b8525c6c64feb83b4652f5b8985da71668d85827'
$checksumType   = 'sha256'
$checksum64     = 'a534b649cf0076ad024688681ad01cbaf44e23caca1fc46f9a208202ff640c2c'
$checksumType64 = 'sha256'

Get-ChocolateyWebFile $packageName "$toolsDir/${packageName}.exe" $url $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64
