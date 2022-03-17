#!/bin/bash
#for i 验证ip合法性
#根据正则筛选出四个点分0-999的数字，把结果保存在临时文件中
grep "^[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}$" /root/shell/ip > /root/shell/ip_test1

echo "" > /root/shell/ip_valid
#清空保存正确数据的文件
for ip in $(cat /root/shell/ip_test1)
    do
        a=$(echo "$ip" | cut -d '.' -f 1 )
        b=$(echo "$ip" | cut -d '.' -f 2 )
        c=$(echo "$ip" | cut -d '.' -f 3 )
        d=$(echo "$ip" | cut -d '.' -f 4 )
        #分别把ip地址的四个数值放入4个变量中
        if [ "$a" -lt 0 -o "$a" -gt 255 ]
            then
                continue
                    #如果第一个数小于0或者大于255，则不是合法的ip数字，退出循环
        fi
        if [ "$b" -lt 0 -o "$b" -gt 255 ]
            then
                continue
                    #如果第一个数小于0或者大于255，则不是合法的ip数字，退出循环
        fi
         if [ "$c" -lt 0 -o "$c" -gt 255 ]
            then
                continue
                    #如果第一个数小于0或者大于255，则不是合法的ip数字，退出循环
        fi
         if [ "$d" -lt 0 -o "$d" -gt 255 ]
            then
                continue
                    #如果第一个数小于0或者大于255，则不是合法的ip数字，退出循环
        fi
        echo "$ip" >>/root/shell/ip_valid
    done
    rm -rf ip_test1