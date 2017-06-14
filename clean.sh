#!/bin/bash
#
LOG_DIR=/var/log
cd $LOG_DIR
cat /dev/null > wtmp
echo "Tmps cleaned up."
exit

