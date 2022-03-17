#!/bin/bash
# 测试几种不同的数值运算工具
num1=1
num2=2
declare -i sum=$num1+$num2 #第一种方法，使用declare 声明数值类型，
echo $sum

sum1=$(expr $num1 + $num2) #第二种方法，使用expr工具，+号前后必须有空格
echo $sum1

let sum2=$num1+$num2 #第三种方法，使用let工具
echo $sum2

sum3=$[ $num1+$num2 ] #第四种使用[]容易和变量测试混淆，不推荐
echo $sum3

sum4=$(($num1+$num2)) #第五种推荐写法
echo $sum4