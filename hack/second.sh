#!/bin/sh

APPNAME=riseofcultures
#APPNAME=nano
APPPID=`sudo ps -A | grep ${APPNAME} | awk '{print $1}'`
echo "${APPNAME} PID is ${APPPID}"
sudo gdb -p ${APPPID} -q -x second.py -ex="set confirm off" -ex="set logging off" -ex quit
