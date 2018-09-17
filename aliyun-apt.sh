#!/bin/bash
cp ./data/aliyun-sources.list /etc/apt/sources.list
echo '已更换为阿里云apt源'
apt update
echo 'apt更新完成'