#!/bin/sh
user=你的账号
pwd=你的密码
r=1
rs=`head -n 128 /dev/urandom | tr -dc "0123456789" | head -c4`
url="http://203.210.93.15/drcom/login?callback=dr1004&DDDDD=$user&upass=$pwd&0MKKey=123456&R1=0&R3=$r&R6=0&para=00&v6ip=&v=$rs"
wget $url -O log.txt
