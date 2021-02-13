#
# Setup
#
# - Install PowerShell 7 from the Windows store.
#
# - In a cmd.exe windows, create a symbolic link for the config file, where the
#   target is the config file within my dotfiles repo.  In this command, the first
#   argument is the result of evaluating $profile within PowerShell.  By using
#   a symbolic link in this way, I can just edit my config file within my
#   dotfiles repo and don't have to make copies when I want to backup or restore
#   it.
#
#   mklink <path_to_$profile> <path_to_target_repo_ps1>
#   For example:
#   mklink C:\Users\kwpeters.RA-INT\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 c:\Users\kwpeters.RA-INT\dev\kwp\dotfiles\powershell_7\Microsoft.PowerShell_profile.ps1
#
#
# - Install dependencies (in a non-elevated PowerShell)
# Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force
#

Remove-Alias -Name ls
function ls {
    # ls should always use -Force so that dot files are shown.
    Get-ChildItem -Force $args
}


################################################################################
# Posh Git
################################################################################
Import-Module posh-git

# In the prompt, replace the home directory path with "~".
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
# Change the default prompt color ot orange.
$GitPromptSettings.DefaultPromptPath.ForegroundColor = 'Orange'
# Insert a newline before the prompt suffix.
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n'


################################################################################
# Elevating to admin
################################################################################
function Enter-AdminPSSession {
  if ($env:OS -eq 'Windows_NT') {
    Start-Process -Verb RunAs (Get-Process -Id $PID).Path
  } else {
    sudo (Get-Process -Id $PID).Path
  }
}

# Optionally also define a short alias name:
# Note: 'psadmin' is a nonstandard alias name; a more conformant name would be
#       the somewhat clunky 'etasn'
#       ('et' for 'Enter', 'a' for admin, and 'sn'` for session)
Set-Alias psadmin Enter-AdminPSSession


################################################################################
# PATH environment variable
################################################################################

# Append script location(s) to the end of the PATH environment variable.
$env:path += ";C:\Users\kwpeters.RA-INT\dev\kwp\PowerShellScripts"
