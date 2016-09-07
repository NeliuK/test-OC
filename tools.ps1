function Write-Log {
    param([string]$logLine, [string]$level)

    switch  -wildcard ($level) {
    
        "INFO*" {Write-Host "### INFO ### $logLine" -foregroundcolor "green"; break}
        "WARN*" {Write-Host "### WARN ### $logLine" -foregroundcolor "yellow"; break}
        "ERR*" {Write-Host "### ERROR ### $logLine" -foregroundcolor "red"; break}
        default {Write-Host "$logLine"}
    
    }
}