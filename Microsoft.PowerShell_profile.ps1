Import-Module -Name Terminal-Icons
Import-Module PSCompletions

function cd... { Set-Location ..\.. }
function cd.... { Set-Location ..\..\.. }
function md5 { Get-FileHash -Algorithm MD5 $args }
function sha1 { Get-FileHash -Algorithm SHA1 $args }
function sha256 { Get-FileHash -Algorithm SHA256 $args }
function ll { Get-ChildItem -Path $pwd -File }
function g { Set-Location D:\Documents\Github }
function gcom {
    git add .
    git commit -m "$args"
}
function lazyg {
    git add .
    git commit -m "$args"
    git push
}
function reload-profile {
    & $profile
}
function grep($regex, $dir) {
    if ( $dir ) {
        Get-ChildItem $dir | select-string $regex
        return
    }
    $input | select-string $regex
}
function touch($file) {
    "" | Out-File $file -Encoding ASCII
}

$ENV:STARSHIP_CONFIG = "$env:USERPROFILE\Documents\Starship\config\starship.toml"
Invoke-Expression (& starship init powershell)
Invoke-Expression (& { (zoxide init powershell | Out-String) })


Write-Host "Welcome to Darkness !"

Write-Host "                                        "
Write-Host "  ,;+:,                          ,:+:,  "
Write-Host "   ,;SS?+                     ,+?#S;,   "
Write-Host "     ,#**%:      ,*SS+,      :S*?S,     "
Write-Host "      *S.+S,....:S?,:%S,....:#;.#;      "
Write-Host "      :#,.%?....*S....#+....S*.:#,      "
Write-Host "     :,#;.,S*;?+;#:..;#:*?;?%,.*S.:     "
Write-Host "     ?%%#:.,*%%*+#+..*#+*%?+..;#?S*     "
Write-Host "     ;@*S@%;,,+?S+,..,*S?;,,+S@%*@:     "
Write-Host "      ?%,:*SS%**??+,,+??**%S%*:,S*      "
Write-Host "       +%;,,,:;;:      :;;:,,,+%+       "
Write-Host "       ;?::?S*            *S*::?:       "
Write-Host "      ;S:..?#;             @+..;S:      "
Write-Host "      *@+..?#              #+.,+@;      "
Write-Host "     ;S*?*,;@              @::*?*%:     "
Write-Host "    ,S%,.,,,S               .,,.,S%,    "
Write-Host "     ,+%*,..;#            #:..:*%+,     "
Write-Host "       ,+?*;,?S          S+,;??;,       "
Write-Host "          :+?*@%,       S#*?+:          "
Write-Host "             ,;*;      ;*;,             "
Write-Host "                                        "
