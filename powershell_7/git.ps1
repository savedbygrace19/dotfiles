#!/usr/bin/env pwsh

################################################################################
# Git aliases
################################################################################
function gitStatus {
    git status $args
  }
  
  function gitLog {
    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
  }
  
  Set-Alias gs gitStatus
  Set-Alias glog gitLog
  