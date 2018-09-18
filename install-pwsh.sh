#!/bin/bash
echo '正在下载Microsoft软件包Provider...'
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
echo '正在安装Microsoft软件包Provider...'
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
echo '正在更新apt...'
apt update
echo '正在安装PowerShell...'
apt install -y powershell
echo '安装完成'