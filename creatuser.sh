#!/bin/bash
#This is creat & del users.
#第一部分首先确定需要创建多少用户
echo "How many users you want to add:"
read -p "input the numbers of users:" num
echo "what your name you want to add:"
read -p "input the name of users:" user
count=1
while [ $count -le $num ]
do
	sudo useradd $user$count
	echo "user $user$count creat successfully"
	count=$(($count + 1))
done
#这一部分以循环的方式删除用户并将过程显示在屏幕上。
echo "do you want to del this users:"
read -p "please input y or n." del
if [ $del="y" ]
then
	let count=count-1
	for((count;count>=1;count--))
	do
	sudo userdel -r $user$count
	echo "user $user$count del successfully"
done

elif [ $del="n" ]
then
	echo "users be reserve."
fi
