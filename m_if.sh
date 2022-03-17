#!/bin/bash
#测试多分支if条件语句
read -t 30 -p "please input a filename:" filename 
#从屏幕读取内容
if [ -z "$filename" ] #如果输入为空
    then
        echo "Error,please input a filename"
        #自定义错误码，0-255，如果是错误输入，跳出语句不执行，节省资源。可以通过 echo $? 来查看退出的代码
        exit 204
elif [ ! -e "$filename" ] #如果输入的内容不是文件。
    then
        echo "your input is not a file"
        exit 205
elif [ -f "$filename" ] #如果输入的内容是普通文件
    then
        echo "your input is a file"
elif [ -d "$filename" ] #如果输入的内容是目录
    then
        echo "your input is a directory"
else #如果都不是，那就输出其他文件。
    echo "your input is a other file"
fi
