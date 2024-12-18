# Programmer:       Per Stoor
# Date:             2024-07-25
# Last changed:     2024-11-26
# Type of script:   PowerShell script to activate gh auth login and ssh-key for working with GitHub.

Write-Output "1. Log in to GitHub. "
Write-Output "2. Log out from GitHub. "
Write-Output "3. Add SSH-key to agent. "

$UserChoice = Read-Host 

    if ($UserChoice -eq 1) {
        Write-Host "logging in to GitHub with [gh auth login]"
        Write-Host "Please wait..."
        Get-Content "[PATH TO TOKEN]" | gh auth login --with-token 
        Write-Host "Login successful!"
    }
    elseif ($UserChoice -eq 2) {
        Write-Host "logging out of GitHub.\n"
        Write-Host "Please wait...\n"
        gh auth logout
    }
    elseif ($UserChoice -eq 3) {
        if ((Get-Service ssh-agent).Status -eq 'Running') {
            Start-Process ssh-add [PATH TO SSH KEY]
        }
        else {
            Start-Service ssh-agent
            Start-Process ssh-add [PATH TO SSH KEY]
        }
     }
    else {
        Write-Host "You did not enter 1, 2 or 3..."
    }

# END OF SCRIPT
