#!/bin/bash
#
# DHT22 temperature/humidity daemon. Writes the current temperatures to
# /run/dht-temp
 
Main() {
  while [ 2 -ge 1 ]; do
                # DHT22 temp
                DHTTemp=$(/root/src/lol_dht22/loldht)
                if [ "X${DHTTemp}" != "X" ]; then
                        echo -n ${DHTTemp} >/run/dht-temp
                fi

                # sleep 1 minute
                sleep 60 
  done
} # Main

Main
