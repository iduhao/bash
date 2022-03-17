#!/bin/bash
#批量删除用户，删除普通用户
#首先提取普通用户，然后删除
name=$( cat /etc/passwd | grep "/bin/bash" | grep -v "root" | cut -d ":" -f 1 )
for i in $name
    do
        userdel -r $i #这里删除$i为每次循环name中的一个普通用户。如果是name的话是提取的所有普通用户
    done