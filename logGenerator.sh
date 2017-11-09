#!/bin/bash 

# Variables: 

kamailioLog="/var/log/ccm/kamailio.log"
libccmLog="/var/log/ccm/libccm.log"

logGeneratingFile="/home/sysadmin/blob3.txt"

fileSize="ls -l --block-size=M"
checkKamailioLogSize="$fileSize $kamailioLog"
checkLibbccmLogSize="$fileSize $libccmLog"

clear 

echo "#### Load generation started at: $(date)"
touch $kamailioLog
touch $libccmLog

echo "# Check log sizes before load"
$checkKamailioLogSize
$checkLibbccmLogSize

echo "# Load log files"
cat $logGeneratingFile >> $kamailioLog;
cat $logGeneratingFile >> $libccmLog; 

echo "# Check log sizes after load" 
$checkKamailioLogSize
$checkLibbccmLogSize

echo "#### Load generation ended at: $(date)"

