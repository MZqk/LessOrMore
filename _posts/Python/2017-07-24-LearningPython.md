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
除去第一行需要添加运行环境#!/usr/local/bin/python2还需要说明编码方式以使程序能够识别中文输出
```python
# -*- coding: utf-8 -*-
```

## 数据结构
*python的数据类型不需要像C一样特别声明*
布尔值
*True* 
*False*
> 支持and、or和not运算

常量
PI = 3.14159265359
> 常量常用全部大写指明，python的优雅在于有规定语法但却没有强制约束，你仍可以对常量做改变

列表
list = [a,b,c,d]
> list是一种有序的集合，可以随时添加和删除其中的元素。

元组
tupe = ('a','b','c','b')
> tuple和list非常类似，但是tuple一旦初始化就不能修改

集合
set = {'a','b','c','d'}
> set和dict类似，也是一组key的集合，但不存储value。由于key不能重复，所以，在set中，没有重复的key。

字典
dict = {'a':1,'b':2,'c':3,'d':4 }
> dict全称dictionary，在其他语言中也称为map，使用键-值（key-value）存储，具有极快的查找速度。

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
```python
value = raw_input('Please input a number:' )
while:
    if value < 100:
        print 'Right'
    else:
        print 'Please input again'

```
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
