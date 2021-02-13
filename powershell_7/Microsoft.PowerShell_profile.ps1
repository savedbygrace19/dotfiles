#
# Setup
#
# - Install PowerShell 7 from the Windows store.
#
# - Copy this profile to the user profile location:
# cp <path_to_this_file> $profile
#
# - Install dependencies (in a non-elevated PowerShell)
# Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force
#


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
