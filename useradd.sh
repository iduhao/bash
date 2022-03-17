#!/bin/bash
#批量添加用户，用户必须有规律
#接收输入的用户名 个数，密码
read -t 30 -p "Please input user name:" name
read -t 30 -p "Please input number of users:" num
read -t 30 -p "Please input password of users:" password

if [ ! -z "$name" -a ! -z "$num" -a ! -z "$password" ]
    #如果三个参数都不为空
    then
        test_num=$(echo $num | sed 's/[0-9]//g')
        #如果测试变量为空，说明原变量为数字
            if [ -z "$test_num" ]
                then
                    for (( i=1;i<=$num;i=i+1 ))
                        do
                            /usr/sbin/useradd $name$i &>/dev/null
                            echo $password | /usr/bin/passwd --stdin $name$i &>/dev/null
                            chage -d 0 $name$i &>/dev/null #设置用户下次登陆必须修改密码,将密码上次修改时间设为0
                        done
                else
                    echo "Please input valid user number!"
                    exit 101
            fi
    else 
    #如果三个参数有一个为空
        echo "Your input is empty,please try again!"
        exit 102
fi