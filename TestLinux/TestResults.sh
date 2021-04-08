#!/bin/bash
clear
sleep 10
clear
pass="$(cat /tmp/testresults |grep PASS |wc -l)"
perc="$(awk -v n="$pass" 'BEGIN{ print int(n*100/8) }')"
clear
echo "You scored $perc %"
cat /tmp/testresults