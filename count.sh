#!/bin/bash
#运行脚本需要至少两个参数，简单的加的脚本，测试脚本传参
a=$1
b=$2
sum=$(( $a + $b ))
echo $sum

echo "\$0 is $0 " #命令本身
echo "\$1 is $1 " #参数1
echo "\$2 is $2 " #参数2
echo "\$# is $# " #参数的个数


