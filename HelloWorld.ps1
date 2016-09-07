.".\tools.ps1"

Foreach ($line in Get-Content("lines.txt")) {

    #write-log "Hello World!" "INFO"
    write-log "$line" "INFO"


}

