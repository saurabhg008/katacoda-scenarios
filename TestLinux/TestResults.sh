#!/bin/bash
clear
sleep 10
clear
CalPercentage()
{
pass="$(cat /tmp/testresults |grep PASS |wc -l)"
perc="$($pass/8*100)"
echo "You scored $perc %"
}
clear
cat /tmp/testresults
CalPercentage
