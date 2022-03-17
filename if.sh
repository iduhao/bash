#!/bin/bash
#测试单if条件语句，判断，根分区使用量超过规定量报警。
use_p=$( df -h | grep /dev/sda1 | awk '{printf $5 "\n"}' | cut -d % -f 1 )

if [ $use_p -ge 10 ]
    then
        echo "$use_p"
fi
    