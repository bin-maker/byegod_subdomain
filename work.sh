#!/bin/bash

PIDS=`ps -ef | grep cc.sh | grep -v grep`
if [ -n "$PIDS" ];then
echo "live"
else
result=`./cc.sh $1`
# 填写你的redis端口,和密码
redis-cli -p 123456789 -a xxxxxx set $1 "$result"
fi

