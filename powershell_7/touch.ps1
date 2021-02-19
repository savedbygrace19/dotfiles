#!/usr/bin/env pwsh

function doTouch {
    $newFile=$args[0]

    Write-Host "New-Item $newFile"
    New-Item $newFile
}

Set-Alias touch doTouch
