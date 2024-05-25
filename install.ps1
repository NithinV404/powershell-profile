try {
    winget install Starship.Starship
    Write-Output "Package installed successfully using Winget"
} catch {
    Write-Output "Failed to install the package using Winget"
    Write-Output "Attempting to install using Scoop..."
    try {
        scoop install main/starship
        Write-Output "Package installed successfully using Scoop"
    } catch {
        Write-Output "Failed to install the package using Scoop"
        Write-Output "Attempting to install using Chocolatey..."
        try {
            choco install starship
            Write-Output "Package installed successfully using Chocolatey"
        } catch {
            Write-Output "Failed to install the package using Chocolatey"
        }
    }
}
    
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
catch 
{
    Write-Output "An error occurred: $_"
    Write-Output "Please try again"
}



