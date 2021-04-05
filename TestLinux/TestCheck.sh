#!/bin/bash
touch /tmp/testresults
FILE1=/tmp/testfile > /dev/null
FILE2=/tmp/saurabh
FILE3=/tmp/gaurav
FILE4=/tmp/abhishek
for FILE in $FILE1 $FILE2 $FILE3 $FILE4; do
if [ -f "$FILE" ]; then
    echo "Question1: PASS" >> /tmp/testresults
else
echo "Question1: FAIL" >> /tmp/testresults
fi
done