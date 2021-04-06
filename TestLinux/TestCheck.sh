#!/bin/bash
rm -f /tmp/testresults
touch /tmp/testresults

testfile()
{
FILE1=/tmp/testfile
if [ -f "$FILE1" ]; then
    echo "Question4: PASS" >> /tmp/testresults
else
echo "Question4: FAIL" >> /tmp/testresults
fi
done
}
test_permission()
{
file="/tmp/testfile"
per="-rw-r-xr--"

result=`ls -ltrh /tmp/testfile |cut -d ' ' -f 1`

if [ "$result" = "$per" ]
then
    echo "Question5: PASS" >> /tmp/testresults
else
    echo "Question5: Fail" >> /tmp/testresults
fi
}
test_permission
testfile