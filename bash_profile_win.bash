echo 'Performing Windows initialization (bash_profile_win.bash)...'

source ~/dev/kwp/dotfiles/run-ssh-agent.bash

#-------------------------------------------------------------------------------
# Editor
#-------------------------------------------------------------------------------

export EDITOR="C:\Program Files (x86)\emacs-26.3-x86_64\bin\emacsclient.exe"

# https://emacs.stackexchange.com/questions/35545/setting-up-emacsclient-on-ms-windows
# -n Don't wait for client to finish when you're launching from the command line.
# -a Specify alternative editor.  Empty string starts the emacs server.
# -c Open a new frame
alias e='"C:\Program Files (x86)\emacs-26.3-x86_64\bin\emacsclientw.exe" -n -a ""'


#-------------------------------------------------------------------------------
# Misc Aliases
#-------------------------------------------------------------------------------
alias ls='ls -lGFA --color'
alias lsd='ls -lGFA --color | grep -i "^d.*/"'
alias h="history"


#-------------------------------------------------------------------------------
#
# PATH
#
#-------------------------------------------------------------------------------
export PATH=${PATH}:~/dev/kwp/juggernaut
export PATH=${PATH}:~/dev/kwp/juggernautJS/src
export PATH=${PATH}:~/dev/kwp/juggernautBash
alias findgrep="findgrep.sh"

export PATH=${PATH}:~/dev/kwp/stella/dist/app


#-------------------------------------------------------------------------------
# WebStorm
#
# In WebStorm, run "Tools -> Create command line launcher".  Once that is done,
# this alias should work.
#-------------------------------------------------------------------------------
alias wstorm="webstorm64.exe"
alias wstormdiff="node ~/dev/kwp/juggernautts/dist/app/webstormdiff.js"
