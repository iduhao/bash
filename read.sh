#!/bin/bash
#使用read接收键盘输入
read -t 30 -p "please input your name: " name #设置提示信息，超时时间30秒
read -t 30 -s -p "please input you password: " password #设置提示信息，超时时间30秒，隐藏输入信息
echo -e "\n" #设置换行
read -t 30 -n 2 -p "please input your age: " age #设置限制输入字符数为2，超时时间为30秒，提示信息
echo -e "\n$name " 
echo $password
echo $age
