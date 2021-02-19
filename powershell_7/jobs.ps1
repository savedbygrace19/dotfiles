#!/usr/bin/env pwsh

function stopJob {
    Stop-Job -Id $args
}

function startJob {
    Start-Job $args
}
  
Set-Alias jobs Get-Job
Set-Alias stop stopJob
