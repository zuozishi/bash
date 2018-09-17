#!/bin/bash
cp ./data/aliyun-source.list /etc/apt/source.list
echo '已更换为阿里云apt源'
apt update
echo 'apt更新完成'