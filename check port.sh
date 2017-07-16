#!/bin/bash
REMOTEHOST=10.11.12.13
REMOTEPORT=25
TIMEOUT=1

if nc -w $TIMEOUT -z $REMOTEHOST $REMOTEPORT; then
    echo "I was able to connect to ${REMOTEHOST}:${REMOTEPORT}"
else
    echo "Connection to ${REMOTEHOST}:${REMOTEPORT} failed. Exit code from Netcat was ($?)."
fi