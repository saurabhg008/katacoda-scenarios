#!/bin/bash
function file_check
{
FILE1=/tmp/testfile
FILE2=/tmp/Saurabh
FILE3=/tmp/Gaurav
FILE4=/tmp/Abhishek
for FILE in $FILE1 $FILE2 $FILE3 $FILE4; do
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
echo "$FILE does not exist."
fi
done
}
file_check