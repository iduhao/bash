#!/bin/bash
#函数
#定义函数
function sum () {
    #echo "$1"  arguments are accessible through $1, $2,...
    echo "$1"
    echo "$2"
    s=0
    for (( i=$1;i<=$2;i=i+1 ))
        do
            s=$(( $i+$s ))
        done
        echo "$1+...+$2 is : $s"
}

read -p "Please input first number:" num1
read -p "Please input second number:" num2
#保存原始输入值
if [ ! -z "$num1" -a ! -z "$num2" ]
    then
        #判断输入为数字
        test_num1=$( echo $num1 | sed 's/[0-9]//g' )
        test_num2=$( echo $num2 | sed 's/[0-9]//g' )
        if [ -z $test_num1 -a -z $test_num2 ]
            then
                #调用函数
                sum $num1 $num2
            else
                echo "please input valid number!"
                exit 101
        fi
else
    echo "input is empty try again!"
    exit 100
fi


