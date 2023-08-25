#!/bin/sh

SUBDOMAINS=`head -1 -- /app/config/subdomains`
TOKEN=`head -1 -- /app/config/token`
LOG_FILE=`head -1 -- /app/config/log`

log()
{
    echo "[$(date)] $@"
}

{
    RESPONSE=$(fetch -q -T 60 -o - "https://www.duckdns.org/update?domains=${SUBDOMAINS}&token=${TOKEN}&ip=")

    if [ "${RESPONSE}" = "OK" ]; then
        log "Your IP address was updated - ${RESPONSE}"
    else
        log "An error occurred while updating your IP address - ${RESPONSE}"
    fi
} | tee -a "${LOG_FILE}" > /dev/null
