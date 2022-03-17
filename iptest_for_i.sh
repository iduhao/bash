#!/bin/bash
#for i 验证ip合法性
#根据正则筛选出四个点分0-999的数字，把结果保存在临时文件中
grep "^[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}$" /root/shell/ip > /root/shell/ip_test1

#统计总共有多少行ip地址
line=$(cat /root/shell/ip_test1 | wc -l)
#line=$(wc -l /root/shell/ip_test1 | awk '{print $1}')
#清空最终保存数据的文件
echo "" > /root/shell/ip_test

for ((i=1;i<=$line;i=i+1))
#有几行就循环几次
    do
        cat /root/shell/ip_test1 | awk 'NR=='$i' {print $0}' > /root/shell/ip_test2
        #第几次循环，就把当前行放入临时文件2里面，此文件中只有一行ip
        a=$(cat /root/shell/ip_test2 | cut -d '.' -f 1 )
        b=$(cat /root/shell/ip_test2 | cut -d '.' -f 2 )
        c=$(cat /root/shell/ip_test2 | cut -d '.' -f 3 )
        d=$(cat /root/shell/ip_test2 | cut -d '.' -f 4 )
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
        cat /root/shell/ip_test2 >>/root/shell/ip_test
        #将合法ip记录在文件中
    done
    rm -rf ip_test1 ip_test2
    #删掉临时文件，只保留源文件和合法ip文件
    