#!/bin/sh
user=你的账号
pwd=你的密码
r=1       #0-3分别表示校园网、电信、移动、联通
rs=`head -n 128 /dev/urandom | tr -dc "0123456789" | head -c4`
#url="浏览器F12抓取URL信息"，如下
url="http://172.54.2.5/drcom/login?callback=dr1004&DDDDD=$user&upass=$pwd&0MKKey=123456&R1=0&R3=$r&R6=0&para=00&v6ip=&v=$rs"
wget $url -O log.txt
