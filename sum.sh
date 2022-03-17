#!/bin/bash
#计算1+2+3+……+100的和
s=0
for (( i=1;i<=100;i=i+1 ))
    do
    echo $s
    echo $i
        s=$(( $s + $i ))
    done
echo $s