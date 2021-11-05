#!/usr/bin/env pwsh

################################################################################
# Kubectl aliases
################################################################################

function followCSPodLog {
    $podName=$args[0]
    kubectl logs --namespace=common-services -f $podName
}

function getCSPods {
    kubectl get pods --namespace=common-services
}

Set-Alias podlog followCSPodLog
Set-Alias pods getCSPods
