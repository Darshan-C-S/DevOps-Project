#!/bin/bash

############################################
#
# Auther : Darshan C S
# Date : 29/08/2024
#
# The script is used to get the node helth
# virson V1
#
# #########################################

# To run the scripts in debug mode 
set -x
# To handle the error in the scripts 
set -e
# To handle the pipefailure even if the last command is valid 
set  -o pipefail


#echo "Print disc space ...."

df -h

#echo "Print no of CPU ...."

nproc

#echo "Print the memory ...."

free -g

#echo "print the process id of process of amazon ...."

ps -ef |grep "amazon" | awk -F " " '{print $2}'


