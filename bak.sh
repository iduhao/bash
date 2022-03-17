#!/bin/bash
#使用双分支条件if语句实现备份etc目录数据
#同步时间
/usr/sbin/ntpdate -u ntp1.aliyun.com &>/dev/null

date=$( date +%Y%m%d%H%M )
size=$( du -sh /etc/)

if [ -d /tmp/bak ]
#判断目录是否存在，是否为目录
    then
        #如果目录存在，
            echo "Time: $date" > /tmp/bak/readme
            echo "Size: $size" >>/tmp/bak/readme
        #编写描述文件
            cd /tmp/bak
        #进行压缩备份操作
            tar -zcvf etc-bak-$date.tar.gz /etc readme &>/dev/null
            rm -rf /tmp/bak/readme
            echo "/etc/ backup successful"
    else
        #如果目录不存在，创建目录
        mkdir /tmp/bak
            echo "Time: $date" > /tmp/bak/readme
            echo "Size: $size" >>/tmp/bak/readme
            cd /tmp/bak
            tar -zcvf etc-bak-$date.tar.gz /etc readme &>/dev/null
            rm -rf /tmp/bak/readme
            echo "/etc/ backup successful"
fi
