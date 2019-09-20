#!/bin/bash

Success()
{   
    date >> successlog
    cat log.txt >> successlog
}

Failure()
{
    date >> failurelog
    cat log.txt >> failurelog
}

#Zip the backsup
#tar -cvf "$(date +"%d%m%y")-backup.tar" /asfss  > log.txt
zip "$(date +"%d%m%y")-backup" *  > log.txt
retVal=$?
if [ $retVal -ne 0 ]; then

    Failure

else
    Success
fi


