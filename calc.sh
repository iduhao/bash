#!/bin/bash
#字符计算器
#输入a，输入操作数，输入b，然后输出计算结果
#v2 限制操作符只能是 +,-,*,/

read -p "Please input first num:" num1
read -n 1 -p "Please input a operation:[+,-,*,/]" operate
echo -e "\n"
read -p "Please input second num:" num2
[ "$operate" == "+" ] && echo "$num1 + $num2 is $(( $num1 + $num2 ))" && exit 
[ "$operate" == "-" ] && echo "$num1 - $num2 is $(( $num1 - $num2 ))" && exit
[ "$operate" == "*" ] && echo "$num1 * $num2 is $(( $num1 * $num2 ))" && exit
[ "$operate" == "/" ] && echo "$num1 / $num2 is $(( $num1 / $num2 ))" && exit
echo "Please input correct operation!"
