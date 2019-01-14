#!/bin/bash

clear

while :
 do
    clear
    echo "------------------------------------------------"
    echo "|      Welcome to my Automation Script         |"
    echo "------------------------------------------------"
    echo "[1]  Show current user                         |"
    echo "[2]  Show current working directory            |"
    echo "[3]  Show files in current directory           |"
    echo "[4]  Show calendar                             |"
    echo "[5]  Start note taker                          |"
    echo "[6]  Show public IP of the machine             |"
    echo "[7]  Show top 5 CPU consuming processes        |"
    echo "[8]  Show free, used & swap memory (in GBs)    |"
    echo "[9]  Show top 10 Files in terms of space usage |"
    echo "[10] Exit                                      |"
    echo "------------------------------------------------"
    echo -n "Choose an option [1-10]: "
    read yourchoice
    
    case $yourchoice in
      1) echo " `whoami`" ; echo "Press a key..." ; read ;;
      2) echo " `pwd` "  ; echo "Press a key..." ; read ;;
      3) echo "Files in `pwd`" ; ls -l ; echo "Press a key. . ." ; read ;;
      4) cal ; echo "Press a key..." ; read ;;
      5) vi ;;
      6) curl ipecho.net/plain ; echo ; echo "Press a key..." ; read ;;
      7) ps -Ao user,uid,comm,pid,ppid,pcpu --sort=-pcpu | head -n 6 ; echo "Press a key..." ; read ;;
      8) free -g -t ; echo "Press a key..." ; read ;;
      9) df -T -h | head -n 11 ; echo "Press a key..." ; read ;;
      10) exit 0 ;;
      *) echo "Not a valid option! Please select choices between 1 to 10!";
         echo "Press a key..." ; read ;;
 esac
done
