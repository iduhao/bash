#!/bin/bash
#获取系统信息版本信息，cpu信息，内存情况，以及硬盘类型和分区，网络配置。
echo "========system-version==========="
cat /etc/redhat-release
echo "========kernel-version============"
uname -r
echo "========cpu-model============"
cat /proc/cpuinfo | grep name | cut -f2 -d:  | uniq -c
echo "=========cpu-numbers============"
cat /proc/cpuinfo | grep "physical id"| sort| uniq| wc -l
echo "=========cpu-cores============"
cat /proc/cpuinfo | grep "cpu cores"| uniq
echo "=========cpu-process============"
cat /proc/cpuinfo | grep "processor"| wc -l
echo "=========memory-info==========="
free -h
echo "=========disk-info================="
disk=`fdisk -l | head -2 | awk '{if(length !=0) print$2}'`
type=`cat /sys/block/${disk:0-4:3}/queue/rotational`
if [[ $type == 1 ]]; then
    echo "This disk is HDD"
else
    echo "This disk is SSD"
fi
storage=`fdisk -l | head -2 | awk '{if(length !=0) print$3,$4}'`
echo "This disk storage is $storage"
df -Th
echo "==========network-info=================="
ifconfig
route -n
cat /etc/resolv.conf