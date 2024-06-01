#!/bin/bash
#######
#author:sarada
#version:v1
#####
set -x
set -e
set -o
df -h
free -g


nproc
ps -ef | grep "amazon" | awk '{print $2}'

