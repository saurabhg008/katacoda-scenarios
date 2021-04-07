#!/bin/bash
rm -f /tmp/testresults
touch /tmp/testresults
CheckUser()
{
cat /etc/passwd |grep -i testuser
if [ $? -eq 0 ]; then
echo "Question1: PASS" >> /tmp/testresults
else
echo "Question1: FAIL" >> /tmp/testresults
fi
}
CheckHomeDir()
{
cat /etc/passwd |grep -i testuser |grep user1
if [ $? -eq 0 ]; then
echo "Question2: PASS" >> /tmp/testresults
else
echo "Question2: FAIL" >> /tmp/testresults
fi
}
CheckSshKey()
{
SSHKEYFILE=/home/testuser/.ssh/id_rsa.pub
if [ -f "$SSHKEYFILE" ]; then
echo "Question3: PASS" >> /tmp/testresults
else
echo "Question3: FAIL" >> /tmp/testresults
fi
}
CheckFile()
{
FILE1=/tmp/testfile
if [ -f "$FILE1" ]; then
    echo "Question4: PASS" >> /tmp/testresults
else
echo "Question4: FAIL" >> /tmp/testresults
fi
}
CheckPermission()
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
CheckUser
CheckHomeDir
CheckSshKey
CheckFile
CheckPermission
CheckUser