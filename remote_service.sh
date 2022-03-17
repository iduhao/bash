#!/bin/bash
#双分支if语句判断远程的服务是否运行
#关键是通过nmap判断端口是否open
port=$( nmap -sT -p 80 192.168.1.1 | grep tcp | grep http | awk '{print $2}' )
if [ "$port" == "open" ]
    then
        #如果为open，则证明服务运行正常，输出到屏幕，并记录在日志中
        echo "the http service in 192.168.1.1 is running!!!"
        echo "$(date) The http service in 192.168.1.1 is running" >>/tmp/remote_service.log
    else
        #否则服务不正常，输出到屏幕，记录日志
        echo "the http service in 192.168.1.1 is down !!!"
        echo "$(date) The http service in 192.168.1.1 is down !!!" >>/tmp/remote_service-err.log
fi

        
