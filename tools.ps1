function Write-Log {
    param([string]$logLine, [string]$level)

    switch  -wildcard ($level) {
    
        "INFO*" {Write-Host $(Get-Timestamp) "### INFO ### $logLine" -foregroundcolor "green"; break}
        "WARN*" {Write-Host $(Get-Timestamp) "### WARN ### $logLine" -foregroundcolor "yellow"; break}
        "ERR*" {Write-Host $(Get-Timestamp) "### ERROR ### $logLine" -foregroundcolor "red"; break}
        default {Write-Host $(Get-Timestamp)" $logLine"}
    
    }
}

function Get-Timestamp {
    $ts = ($(Get-Date -UFormat "%T.") + (get-date).millisecond)
    #$ts = (get-date).millisecond
    return $ts

}