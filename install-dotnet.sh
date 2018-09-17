#!/bin/bash
echo '正在安装Microsoft软件包Provider...'
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb && sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
echo '正在更新apt...'
apt update
echo '正在安装apt https支持...'
apt-get install apt-transport-https
echo '正在安装.Net Core SDK...'
apt-get install dotnet-sdk-2.1
echo '安装完成'