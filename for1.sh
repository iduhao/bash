#!/bin/bash
#for 循环 两种语法
 for i in 1 2 3 4
    do
        echo $i
    done

for (( a=1;a<=100;a=a+1 ))
    do
        echo $a
    done