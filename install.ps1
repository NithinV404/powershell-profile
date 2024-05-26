try {
    try {
        Write-Output "Attempting to install Starship using Winget..."
        winget install --id Starship.Starship
        Write-Output "Package installed successfully using Winget"
    }
    catch {
        Write-Output "Failed to install the package using Winget"
        Write-Output "Attempting to install using Scoop..."
        try {
            scoop install starship
            Write-Output "Package installed successfully using Scoop"
        }
        catch {
            Write-Output "Failed to install the package using Scoop"
            Write-Output "Attempting to install using Chocolatey..."
            try {
                choco install starship
                Write-Output "Package installed successfully using Chocolatey"
            }
            catch {
                Write-Output "Failed to install the package using Chocolatey"
            }
        }
    }
        
    # Install Terminal-Icons module from PowerShell Gallery
    Install-Module -Name Terminal-Icons -Scope CurrentUser -Force
        
    # Install PSCompletions module from PowerShell Gallery
    Install-Module -Name PSCompletions -Scope CurrentUser -Force
        
    # Downloading and placing the profile in the default location
    # Backup the old profile if it exists
    if (Test-Path $PROFILE) {
        Write-Output "Backing up the existing profile as $PROFILE.old"
        Rename-Item $PROFILE "$PROFILE.old"
    }
    
    # Downloading and placing the new profile in the default location
    Write-Progress -Activity "Downloading Profile" -Status "Downloading..." -PercentComplete 0
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/NithinV404/powershell-profile/main/Microsoft.PowerShell_profile.ps1" -OutFile "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
    Write-Output "Profile downloaded successfully and applied"
        
    # Create the directory if it doesn't exist
    Write-Output "Checking if the Starship config directory... exists"
    if (-not (Test-Path $env:USERPROFILE\Documents\Powershell\Starship\config\)) {
        Write-Output "Creating the Starship config directory..."
        New-Item -ItemType Directory -Path $env:USERPROFILE\Documents\Powershell\Starship\config\ -Force
    }
    else {
        Write-Output "Directory already exists"
    }
        
    # Download the Starship config file
    Write-Progress -Activity "Downloading Starship config" -Status "Downloading..." -PercentComplete 0
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/NithinV404/powershell-profile/main/Starship/config/starship.toml" -OutFile "$env:USERPROFILE\Documents\Powershell\Starship\config\starship.toml"
    Write-Output "Starship config file downloaded successfully and applied"
    
    Write-Output "Installation completed successfully"
}
catch {
    Write-Output "An error occurred: $_"
}



