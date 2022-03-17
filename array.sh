#!/bin/bash
#数组变量

#声明数组变量，用两种方式
declare name[0]="head coach"
name[1]="sc"
name[2]="kt"
name[3]="kd"
name[4]="dg"
name[5]="ai"
echo "${name[*]}"
 


