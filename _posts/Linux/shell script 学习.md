---
layout: post
#标题配置
title:  shell script学习过程
#时间配置
date:   2017-06-14 09:08:00 +0800
#大类
categories: Linux
#小类
tag: bash
---

* content
{:toc}


外部环境变量赋值

vim test.sh
```
#!/bin/bash
name=$1
echo $name
```
sh test.sh 2017 
>2017