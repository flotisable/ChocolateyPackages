$ErrorActionPreference = 'Stop'

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName    = $env:ChocolateyPackageName
$url            = 'https://github.com/mattn/efm-langserver/releases/download/v0.0.49/efm-langserver_v0.0.49_windows_amd64.zip'
$checksum       = '93c385262b249c7b3bcb4e5884f15cbea98cf89363d16213848bf81fc94f1ca9'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage $packageName $url $toolsDir -checksum $checksum -checksumType $checksumType
