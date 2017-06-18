---
layout: post
#标题配置
title:  安装Hadoop
#时间配置
date:   2017-06-15 09:08:00 +0800
#大类
categories: other
#小类
tag: hadoop
---

* content
{:toc}


## 安装java环境
安装jdk
设置java环境变量
>vim /etc/profile

```
export  JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/
eport   JRE_HOME=$JAVA_HOME/jre
eport   CLASSPATH=$JAVA_HOME/lib:$JRE_HOME:lib:$CLASPATH
export  PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
```
## 下载hadoop源码包
配置文件在hadoop目录下conf
>hadoop-env.sh  
mapred-site.xml  
core-site.xml   
hadfs-site.xml  

设置hadoop环境变量

## 格式化操作
>hadoop namenode - fromat

jps查看hadoop运行进程

hadoop基础命令
```java
hadoop fs -ls / 
hadoop fs -mkdir filename   
hadoop fs -put file filename/   
hadoop fs -cat filename/file    
hadoop fs -get filename/file newfile    
hadoop dfsadmin -report #查看hadoop文件信息 
```

## hive安装

下载hive安装包
hive目录lib导入mysql.jar包
配置文件在hive目录下conf    
hive-env.sh     
hive-site.xml
1. mysql连接url地址
2. mysql驱动名字
3. 用户名
4. 密码

hive CLI模式
