BAT="/sys/class/power_supply/BAT0"
while true; do
    CHARGE_NOW=`cat $BAT/charge_now`
    CHARGE_FULL=`cat $BAT/charge_full`
    PERCENT=`echo "($CHARGE_NOW * 100)/$CHARGE_FULL" | bc`
    BATSTATUS=`cat $BAT/status`

    if   [ "$BATSTATUS" = "Charging" ]; then
        BATSTATUS="+"
    elif [ "$BATSTATUS" = "Discharging" ]; then
        BATSTATUS="-"
    else
        BATSTATUS=""
    fi

    echo "B$BATSTATUS$PERCENT%"
    sleep 5
done
