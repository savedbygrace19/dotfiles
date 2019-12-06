echo 'Performing Windows initialization (bash_profile_win.bash)...'

source ~/dev/kwp/dotfiles/run-ssh-agent.bash

#-------------------------------------------------------------------------------
# Setup the prompt
#-------------------------------------------------------------------------------
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' ; }
export PS1="\e[0;34m\w\e[m\e[0;32m\$(parse_git_branch)\e[m \$ "
# Add some whitespace before each prompt line for better readability.
PS1="\n$PS1"

#-------------------------------------------------------------------------------
# Misc Aliases
#-------------------------------------------------------------------------------
alias ls='ls -lGFA --color'
alias lsd='ls -lGFA --color | grep -i "^d.*/"'
alias h="history"
alias e="$EDITOR"


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
