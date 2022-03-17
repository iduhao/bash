#!/bin/bash
#测试until循环
i=1
s=0
until [ $i -gt 100 ] #直到变量大于100条件成立，即终止循环
    do
        s=$(( $s+$i ))
        i=$(( $i+1 ))
    done
echo "$s"