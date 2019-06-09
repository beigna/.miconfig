#!/bin/sh

revert() {
	xset dpms 0 0 600
}

trap revert HUP INT TERM
xset dpms 5 5 5
i3lock -n -p win -i ~/lockscreen.png -f
revert
