#/bin/bash
##显示当前主机的信息，包括主机名，ip地址，系统版本，内核版本，cpu，内存和硬盘信息
clear
echo "本机名称:`hostname`"
echo "ip地址:`ifconfig | tr -s " " ":" | cut -d : -f3 | head -n 2 | tail -n 1`"
echo "内核版本:`uname`->`uname -r`"
echo "系统版本`cat /etc/redhat-release`"
echo "cpu`lscpu | grep -i "型号名称" | tr -s " "`"
echo "总内存:`free -h | tr -s " " ":" | cut -d : -f2 | tail -n 2 | head -n 1`"
echo "已使用:`free -m | tr -s " " ":" | cut -d : -f3 | tail -n 2 | head -n 1`M"
echo "剩余内存`free -m | tr -s " " ":" | cut -d : -f4  | tail -n 2 | head -n 1`M"
echo "硬盘总大小:`df -B G | tr -s " " ":" | cut -d : -f2 | head -n 2 | tail -n 1`"
echo "已使用:`df -B G | tr -s " " ":" | cut -d : -f3 | head -n 2 | tail -n 1`"
echo "剩余:`df -B G | tr -s " " ":" | cut -d : -f4 | head -n 2 | tail -n 1`"
echo "已用%:`df -B G | tr -s " " ":" | cut -d : -f5 | head -n 2 | tail -n 1 `"
