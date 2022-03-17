#!/bin/bash
#continue跳出本次循环,循环继续执行
for (( i=1;i<=10;i=i+1 ))
    do
        if [ "$i" -eq 4 ]
            then
            continue
        fi
       echo $i
    done