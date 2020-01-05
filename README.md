# Common Bash

|   |   |
| :------ | :------ |
| [aliyun-source.sh](./aliyun-source.sh) | 阿里云apt源 |
| [install-msft.sh](./install-dotnet.sh) | 安装Microsoft软件提供包 |
| [install-dotnet.sh](./install-dotnet.sh) | 安装.NetCore |
| [install-htop.sh](./install-dotnet.sh) | 安装htop |
| [Apache+MySQL+PhpMyAdmin.sh](./install-dotnet.sh) | 安装Apache+MySQL+PhpMyAdmin |

# PPTP 客户端
```
apt install pptp-linux
pptpsetup --create ac88u --server ***.***.*** --username *** --password *** --encrypt --start

#断开
poff ac88u
#连接
pon ac88u
```

# 挂载NFS
```
sudo apt-get install nfs-common
mkdir /mnt/USB_Disk
showmount -e 192.168.1.1
sudo mount -t nfs 192.168.1.1:/mnt//USB_Disk/ /mnt/USB_Disk
#卸载挂载
sudo umount /mnt/USB_Disk
```