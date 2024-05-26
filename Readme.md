# Custom PowerShell Aliases and Starship Profile

This repository contains scripts to download and apply custom PowerShell aliases and a Starship profile.

## Instructions

1. **Setting Execution Policy:**
   - Set the execution policy to allow running unsigned scripts for the current user by running:
    ```
    Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass
    ```

2. **Downloading and Applying Custom PowerShell Aliases:**
    - Run this command to download and apply the custom PowerShell aliases:
    ```
    irm https://raw.githubusercontent.com/NithinV404/powershell-profile/main/install.ps1 | iex
    ```
Here is a documentation of all the aliases present in the Microsoft.PowerShell_profile.ps1 file:

1. cd...: Changes the current location to two levels up.

2. cd....: Changes the current location to three levels up.

3. md5: Calculates the MD5 hash of a file.

4. sha1: Calculates the SHA1 hash of a file.

5. sha256: Calculates the SHA256 hash of a file.

6. ll: Lists all files in the current directory.

7. g: Sets the location to D:\Documents\Github.

gcom: Adds all changes, commits with a message provided as an argument.

9. lazyg: Adds all changes, commits with a message provided as an argument, and pushes to the remote repository.

10. reload: Reloads the PowerShell profile.

11. grep: Searches for a specified regex pattern in files. If a directory is provided, it searches within that directory.

12. touch: Creates an empty file at the specified path.

13. Update-GitHubProfile: Downloads and updates the PowerShell profile from a specified URL.

14. WeeklyGitHubUpdate: Scheduled job to run Update-GitHubProfile function every week.

15. STARSHIP_CONFIG: Sets the Starship configuration file path.

16. Invoke-Expression (& starship init powershell): Initializes Starship for PowerShell.

17. Invoke-Expression (& { (zoxide init powershell | Out-String) }): Initializes zoxide for PowerShell.

These aliases provide shortcuts and functionalities for common tasks and operations in PowerShell.