
while true; do
    IP_WIFI=`ip address show wlp1s0 | grep "inet " | awk -F '[: ]+' '{ print $3 }' | cut -d "/" -f 1`
    IP_ETH=`ip address show enp0s31f6 | grep "inet " | awk -F '[: ]+' '{ print $3 }' | cut -d "/" -f 1`

    if [[ $IP_WIFI = "" ]]; then
        IP_WIFI="-"
    fi

    if [[ $IP_ETH = "" ]]; then
        IP_ETH="-"
    fi

    echo "NWiFi [$IP_WIFI] Eth [$IP_ETH]"
    sleep 5
done
