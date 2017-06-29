#!/bin/bash
#利用read来做一个快速问答的脚本
#
echo "============Quesion&Answer================"
echo "Q:What is your favorite NBA player?"
read
echo "A:Your favorite NBA player is $REPLY."
echo
echo "Q:What is his number?"
read
echo "A:His number is $REPLY."
