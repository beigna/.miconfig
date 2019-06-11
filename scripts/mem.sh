#! /bin/sh

while true; do
    free -h | sed -n '2p' | awk '{printf("R%s %s\n", $3, $7)}'
    sleep 5
done
