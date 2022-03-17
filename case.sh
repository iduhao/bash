#!/bin/bash
#case语句练习
echo "===================================="
echo "|   please choice your database    |"
echo "|   1.MSSQL server                 |"
echo "|   2.mysql                        |" 
echo "|   3.oracle                       |"
echo "===================================="
read -t 30 -p "please input your choice:" choice

case $choice in
    "1" )
        echo "your choice is MSSQL"
        ;;
    "2" )
        echo "your choice is mysql"
        ;;
    "3" )
        echo "your choice is oracle"
        ;;
    * )
        echo "your input is not valid"
esac


