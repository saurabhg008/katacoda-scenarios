#!/bin/bash
function file_check
{
FILE1=/tmp/testfile
FILE2=/tmp/saurabh
FILE3=/tmp/gaurav
FILE4=/tmp/abhishek
for FILE in $FILE1 $FILE2 $FILE3 $FILE4; do
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
echo "$FILE does not exist."
fi
done
}
function user_check
{
cat /etc/passwd |grep -i Sangeeta > /dev/null
if [ $? -eq 0 ]; then
echo "Users Exist."
else
echo "User doesnt exist"
fi
}
file_check
user_check