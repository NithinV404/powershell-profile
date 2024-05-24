# Custom PowerShell Aliases and Starship Profile

This repository contains scripts to download and apply custom PowerShell aliases and a Starship profile.

## Instructions

1. **Setting Execution Policy:**
   - Set the execution policy to allow running unsigned scripts for the current user by running:
     ```powershell
     Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass
     ```

2. **Downloading and Applying Custom PowerShell Aliases:**
    - Run this command to download and apply the custom PowerShell aliases:
    ```
    irm https://raw.githubusercontent.com/NithinV404/powershell-profile/main/install.ps1 | iex
    ```

3. **Installing Starship using Scoop, Winget, or Choco if Installation Fails:**
    - If the script fails to install Starship, use Scoop, Winget, or Choco commands to install it.
    - To install Starship using Scoop, run:
    ```
    scoop install starship
    ```

    - To install Starship using Winget, run:
    ```
    winget install starship
    ```

    - To install Starship using Choco, run:
    ```
    choco install starship
    ```
