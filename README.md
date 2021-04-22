# 公司的Dr.COM校园网断网检测自动登录验证openwrt脚本

"xyw.sh"这个脚本带断网检测功能

“dr.sh"这个脚本没有断网检测功能，直接用openwrt计划任务定时登录认证

"time.sh"这个脚本是系统启动时初始化系统时间，我没有用到

使用方法：
这里以"xyw.sh"这个脚本为例，其他脚本方法基本相同

1、使用putty等连接openwrt的SSH工具

2、  cd /root        //到root目录下

3、  vi xyw.sh        //新建和编辑"xyw.sh"

4、  复制“xyw.sh"里面信息，右键粘贴

5、Esc建 ————> Shift+: ————> wq       //保存退出 

6、chmod 777 xyw.sh                   //授予执行权限

7、sh /root/xyw.sh                     //注销校园网认证，使用ssh指令验证是否可以登录校园网

8、使用WinSCP软件连接路由器到 /root/ 目录下查看是否生成”log.txt“文件，里面有请求信息，如果出现此文件说明脚本正常运行。

9、最后在 系统————>计划任务 下设置定时任务，如：*/1 * * * * /root/xyw.sh    //信息说明：每一分钟检测网络状态，如果网络异常则执行登录验证。


#参考文章
计划任务设置参考：https://blog.csdn.net/liubiggun/article/details/50781848?spm=1001.2014.3001.5506

Dr.COM校园网认证参考：https://blog.csdn.net/csdn9228/article/details/103542395?spm=1001.2014.3001.5506

断网检测参考：https://kzpu.com/archives/4023.html
https://www.right.com.cn/forum/forum.php?mobile=2&mod=viewthread&page=1&tid=958200
