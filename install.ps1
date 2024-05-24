# Install Starship using Winget
if (!(winget show starship)) {
    winget install starship
}
else { Write-Output "Starship is already installed" }
# Install Terminal-Icons module from PowerShell Gallery
Install-Module -Name Terminal-Icons -Scope CurrentUser -Force

# Install PSCompletions module from PowerShell Gallery
Install-Module -Name PSCompletions -Scope CurrentUser -Force

# Downloading and placing the profile in the default location
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/NithinV404/powershell-profile/main/Microsoft.PowerShell_profile.ps1" -OutFile $PROFILE

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Path $env:USERPROFILE\Documents\Powershell\Starship\config\ -Force

# Download the Starship config file
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/NithinV404/powershell-profile/main/Starship/config/starship.toml" -OutFile $env:USERPROFILE\Documents\Powershell\Starship\config\starship.toml
