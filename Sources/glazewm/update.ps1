Function global:au_GetLatest()
{
  $releaseUrl = "https://github.com/lars-berger/GlazeWM/releases"

  $html       = Invoke-WebRequest -Uri $releaseUrl -UseBasicParsing
  $latestTag  = ( $html.Links | Where-Object 'href' -Match 'releases/tag' | Select-Object -Index 0 ).href
  $versionTag = Split-Path $latestTag -Leaf
  $version    = $versionTag -replace 'v', ''
  ( $html.Content -split "\n" | Select-String "expanded_assets/$versionTag" ) -Match 'src="(?<assetsUrl>[^"]+)"'
  $assetsUrl  = $Matches.assetsUrl
  $assetsHtml = Invoke-WebRequest -Uri $assetsUrl -UseBasicParsing
  $url        = "https://github.com$( ( $assetsHtml.Links | Where-Object 'href' -Match 'x86' ).href )"
  $url64      = "https://github.com$( ( $assetsHtml.Links | Where-Object 'href' -Match 'x64' ).href )"

  return @{
            version = $version;
            url     = $url;
            url64   = $url64;
          }
}

Function global:au_SearchReplace()
{
  $checksum   = Get-RemoteChecksum $Latest.url
  $checksum64 = Get-RemoteChecksum $Latest.url64

  return @{
            "$( $Latest.PackageName ).nuspec" =
              @{
                  # e.g. <version>1.10.0</version>
                  '^(\s*<version>)\d+\.\d+\.\d+<' = "`${1}$( $Latest.version )<";
              };
            'tools/chocolateyinstall.ps1' =
              @{
                  # e.g. $url = 'https://github.com/lars-berger/GlazeWM/releases/download/v1.10.0/GlazeWM_x86_1.10.exe'
                  '^(\$url\s+=\s+).+$'        = "`$1'$( $Latest.url   )'";
                  # e.g. $url64 = 'https://github.com/lars-berger/GlazeWM/releases/download/v1.10.0/GlazeWM_x64_1.10.exe'
                  '^(\$url64\s+=\s+).+$'      = "`$1'$( $Latest.url64 )'";
                  # e.g. $checksum = '9B84DEBBFFF7AFE452E00F09D8413B9B6E1F518E214400191C7FA2D6BEB881B'
                  '^(\$checksum\s+=\s+).+$'   = "`$1'$( $checksum )'";
                  # e.g. $checksum64 = '9B84DEBBFFF7AFE452E00F09D8413B9B6E1F518E214400191C7FA2D6BEB881B'
                  '^(\$checksum64\s+=\s+).+$' = "`$1'$( $checksum64 )'";
              };
          }
}

Update-Package -ChecksumFor none
