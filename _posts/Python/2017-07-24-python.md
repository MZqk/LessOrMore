---
layout: post
#标题配置
title:  python3入门基础
#时间配置
date:   2017-07-24 09:08:00 +0800
#大类
categories: python
#小类
tag: python
---

* content
{:toc}


源程序编码
除去第一行需要添加运行环境#!/usr/local/bin/python外还需要说明编码方式以使程序能够识别中文输出
```python
# -*- coding: utf-8 -*-
```

## 数据结构
列表
list = [a,b,c,d]

元组
tupe = ('a','b','c','b')

集合
set = {'a','b','c','d'}

字典
dict = {'a':1,'b':2,'c':3,'d':4 }


## 控制流程
### if
```python
if x < 0:
    print (小于零)
elif x == 0:
    print (等于零)
elif x == 1:
    prin(等于1)
else:
    print(大于零)
```
if判断语句可结合elif用来替换‘case’或‘switch’语句
### for
常用遍历
```python
a=['a','b','c','d']
for i in range(len(a))
    print (i,a[i]) 
```
### while
### break、continue和else
从C语言引用过来，用在控制语句中跳出或延续
### pass
表示什么都不做，可用来构建最小类。（另外也可以用来当作占位符）
```python
class myclass:
    pass
```

## 函数
### 定义函数
