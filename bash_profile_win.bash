echo 'Performing Windows initialization (bash_profile_win.bash)...'

source ~/dev/dotfiles/run-ssh-agent.bash

alias ls='ls -lGFA --color'
alias lsd='ls -lGFA --color | grep -i "^d.*/"'


#-------------------------------------------------------------------------------
# Misc Aliases
#-------------------------------------------------------------------------------
alias h="history"
alias e="$EDITOR"


#-------------------------------------------------------------------------------
#
# PATH
#
#-------------------------------------------------------------------------------
export PATH=${PATH}:~/dev/juggernaut
export PATH=${PATH}:~/dev/juggernautJS/src
export PATH=${PATH}:~/dev/juggernautBash
alias findgrep="findgrep.sh"

export PATH=${PATH}:~/dev/stella/dist/app



