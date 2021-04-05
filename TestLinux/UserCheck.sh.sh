#!/bin/bash
cat /etc/passwd |grep -i Sangeeta > /dev/null
if [ $? -eq 0 ]; then
echo "Users Exist."
else
echo "User doesnt exist"
fi