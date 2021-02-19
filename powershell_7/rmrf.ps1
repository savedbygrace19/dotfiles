#!/usr/bin/env pwsh

function doRmrf {
    $dirOrFile=$args[0]
    Write-Host "Remove-Item -Recurse -Force $dirorFile"
    Remove-Item -Recurse -Force $dirOrFile
}

Set-Alias rmrf doRmrf
