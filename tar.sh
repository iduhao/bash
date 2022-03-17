#!/bin/bash
#批量解压缩gz和tgz压缩包，使用for i

#进入操作目录
cd /root/shell/tar
#将要操作的压缩包的名字放到临时目录
ls *.tar.gz >tar.log
ls *.tgz >> tar.log

#统计要操作的压缩包的个数
count=$(cat tar.log| wc -l )
#循环获取要解压缩的包名
for (( i=1;i<="$count";i=i+1 ))
    do
        file_name=$(cat tar.log | awk 'NR=='$i' {print $1}' )
        tar -zxvf  $file_name -C /root/shell/tar
    done
rm -rf tar.log