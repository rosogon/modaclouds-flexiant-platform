#!/usr/bin/env bash

. platform-env.sh
. platform-functions.sh

for pidfile in $HOME/var/run/*.pid; do
    if [ -e $pidfile ]; then
        filename=$(basename $pidfile)
        id=${filename%.pid}

	platform-service.sh $id
    fi 
done

