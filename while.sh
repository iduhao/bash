#!/bin/bash
#测试while循环,从第一个数，加到第二个数
read -p "Please input first number:" num1
read -p "Please input second number:" num2
#保存原始输入值
input_num1=$num1
input_num2=$num2
#有输入就得有判断
if [ ! -z "$num1" -a ! -z "$num2" ]
    then
        #判断输入为数字
        test_num1=$( echo $num1 | sed 's/[0-9]//g' )
        test_num2=$( echo $num2 | sed 's/[0-9]//g' )
        if [ -z $test_num1 -a -z $test_num2 ]
            then
                while [ $num1 -le $num2 ]
                  do
                    sum=$(( $sum+$num1 ))
                    num1=$(( $num1+1 ))
                  done
               echo "$input_num1+...+$input_num2 is $sum"
            else
                echo "please input valid number!"
                exit 101
        fi
else
    echo "input is empty try again!"
    exit 100
fi


