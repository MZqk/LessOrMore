>sudo apt-get install mysql-server 

设置root密码

启动服务
>sudo service mysql start

如果启动失败 
再登入时会出现报错 
ERROR 2002 (HY000): Can’t connect to local MySQL server through socket ‘/var/lib/mysql/mysql.sock’ (2)

提示为权限问题 
查看 /var/lib/mysql 目录下是否有mysql.sock文件生成

使用root用户登入 
修改启动目录权限
>chown -R mysql:mysql /var/lib/mysql

再次启动服务
>/etc/init.d/msyql start

/var/lib/mysql 目会录自动生成mysql.sock文件

mysql -u root -p 
正常启动 

 