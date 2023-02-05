$ErrorActionPreference  = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/lars-berger/GlazeWM/releases/download/v1.11.0/GlazeWM_x86_1.11.exe'
$url64          = 'https://github.com/lars-berger/GlazeWM/releases/download/v1.11.0/GlazeWM_x64_1.11.exe'
$checksum       = '9B84DEBBFFF7AFE452E00F09D8413B9B6E1F518E214400191C7FA2D6BEB881B2'
$checksumType   = 'sha256'
$checksum64     = 'C348925508F52130EDB200C6FFD06D4532FF73CDF9312B4B7821FCB4457622A3'
$checksumType64 = 'sha256'

Get-ChocolateyWebFile $packageName "$toolsDir/${packageName}.exe" $url $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64
