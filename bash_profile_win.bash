echo 'Performing Windows initialization (bash_profile_win.bash)...'

source ~/dev/dotfiles/run-ssh-agent.bash

alias ls='ls -lGFA --color'
alias lsd='ls -lGFA --color | grep -i "^d.*/"'