#!/bin/sh

RANDOM=`jot -r 1 0 1000000`; sleep $((60 + ${RANDOM} % 230)); /app/duckdns.sh
