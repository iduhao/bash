#!/bin/bash
#用多分支if语句写个计算器
read -p "Please input first num:" num1
read -n 1 -p "Please input a operation:[+,-,*,/]" operate
echo -e "\n"
read -p "Please input second num:" num2
if [ -n "$num1" -a -n "$num2" -a -n "$operate" ]
#判断需要输入的参数都不为空
    then
    #测试输入的内容是否为数字，实现原理，即将传进来的参数用sed进行替换为空，如果能替换为空，即说明原来的变量均为数字，
    #如果不能替换，即原来的变量有除了数字之外的其他字符，常用来进行参数数字判断，也可以替换为字母，判断是否为纯字母
    test_num1=$(echo $num1 | sed 's/[0-9]//g')
    test_num2=$(echo $num2 | sed 's/[0-9]//g')
        if [ -z "$test_num1" -a -z "$test_nmu2" ]
            #如果两个测试变量均为空，即两个原变量均为数字
            then
                if [ "$operate" == '+' ]
                    then
                    result=$(( $num1 + $num2 ))
                elif [ "$operate" == '-' ]
                    then
                    result=$(( $num1 - $num2 ))
                elif [ "$operate" == '*' ]
                    then
                    result=$(( $num1 * $num2 ))
                elif [ "$operate" == '/' ]
                    then
                    result=$(( $num1 / $num2 ))
                else
                    #如果运算符都不匹配，即提示输入有效的操作符号
                    echo "please input valid opreate symbol"
                    exit 88
                fi
            else   
                #如果两个测试变量不为空，即原变量有除数字之外的字符
                echo "please input a valid value"
                exit 89
        fi
else
    echo 'please input correct number or operate'
   exit 90
fi
#输出计算结果
echo "$num1 $operate $num2 : $result"

    