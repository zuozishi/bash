import os

port_str=input('请输入监听端口[3306]：')
ip_str=input('请输入绑定IP[127.0.0.1]：')
if len(port_str)==0:
    port_str='3306'
if len(ip_str)==0:
    ip_str='127.0.0.1'
print('修改配置文件...')
os.system('echo \'[mysqld]\' >> /etc/apt/mysql/my.cnf')
os.system('echo \'port=%s\' >> /etc/apt/mysql/my.cnf'%(port_str))
os.system('echo \'bind-address=%s\' >> /etc/apt/mysql/my.cnf'%(ip_str))
print('重启MySQL服务...')
os.system('service mysql restart')