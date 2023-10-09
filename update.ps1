$rootDir    = "$(Split-Path $PSCommandPath)"
$sourceDir  = 'Sources'
$packageDir = 'Packages'

ForEach( $dir in Get-ChildItem -Dir $sourceDir -Name )
{
  Set-Location $rootDir/$sourceDir/$dir

  $result = ( ./update.ps1 )

  If( $result.Updated )
  {
    choco push "$dir.$( $result.RemoteVersion ).nupkg" --source $rootDir/$packageDir
  }
  Set-Location $rootDir
}
