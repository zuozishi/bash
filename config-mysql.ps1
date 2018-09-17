Write-Host '请输入监听端口[3306]：'
$port=Read-Host
Write-Host '请输入监听IP[127.0.0.1]：'
$ip=Read-Host
if($port -eq '')
{
    $port='3306'
}
if($ip -eq '')
{
    $ip='127.0.0.1'
}
echo '[mysqld]' >> /etc/mysql/my.cnf
echo ('port='+$port) >> /etc/mysql/my.cnf
echo ('bind-address='+$ip) >> /etc/mysql/my.cnf
service mysql restart