#!/bin/bash
#使用双分支if语句查询服务是否正常运行，如果不正常，即自动重启该服务
pid=$( ps -auxf | grep docker | grep -v grep | awk '{printf $2 "\n"}' )
if [ -z "$pid" ]
    then
        echo "service is down!"
        systemctl start docker
        echo "service is starting!!!"
        start_pid=$( ps -auxf | grep docker | grep -v grep | awk '{printf $2 "\n"}' )
        echo $start_pid
    else
        echo "service is running!"
fi