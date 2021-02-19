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
  
  function gitAdd {
    git add $args
  }
  
  function gitCommit {
    git commit $args
  }
  
  function gitPush {
    git push $args
  }
  
  Set-Alias gs gitStatus
  Set-Alias glog gitLog
  Set-Alias add gitAdd
  Set-Alias commit gitCommit
  Set-Alias push gitPush
  