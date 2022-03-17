#!/bin/bash
#测试$*h和$@两个参数的不同意义
for x in " $* " #$*把所有参数看成一个整体的字符串，所以这个只会循环一次。用""把$*括起来
  do
    echo $x
  done

 echo ======================

 for y in " $@ " #$@把所有参数看成独立的一个个参数，所以有几个参数就会循环几遍。""把$@括起来
    do
        echo $y
    done

echo "para count is $# "

 