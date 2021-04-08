#!/bin/bash
CalPercentage()
{
pass="$(cat /tmp/testresults |grep PASS |wc -l)"
perc="$($pass/8*100)"
echo "You scored $perc %"
}
