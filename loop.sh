#!/bin/bash
#使用嵌套循环打印图案
#
for((i=1;i<=5;i++))
do
	for m in `seq $i`
		do
		echo -n "*"
	done
	echo ""
done




#======================
#*
#**
#***
#****
#*****
