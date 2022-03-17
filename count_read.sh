#!/bin/bash
# 通过read接收键盘输入脚本，改写计算加法
read -t 30 -p "please input a num1: " num1
read -t 30 -p "please input a num2: " num2
sum=$(( $num1 + $num2 ))
echo " $num1+$num2 is $sum "