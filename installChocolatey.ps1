# Modified from https://docs.chocolatey.org/en-us/choco/setup#non-administrative-install script 
$InstallDir             = './Chocolatey'
$env:ChocolateyInstall  = "$InstallDir"

New-Item -Type Directory -Name "$InstallDir"

Set-ExecutionPolicy Bypass -Scope Process -Force;

iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
