---
layout: post
#标题配置
title:  python入门基础
#时间配置
date:   2017-07-24 09:08:00 +0800
#大类
categories: python
#小类
tag: python
---

* content
{:toc}


**本文仅为粗略地概括python编程的基本语法，若你有C二级的水平将可以轻易看懂。作为引导很容易了解到python基础，详细的最好能通过官方文档学习。**
# Python
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

*函数嘛，基本编程语言都离不开它。函数能提高应用的模块性，和单一功能功能代码的重复利用率。我们在程序中很多语法本就个内建的函数，比如print()。*

### 定义函数
```python 
def printNum(number):
    """
    这是函数说明文档内容
    使用printNum.__doc__可以将其打印出
    """
    num = int(number)
    print(num)

```

>通过定义的函数，我们将printNum函数定义为只打整数的print。

## 错误和异常
错误
我们说的错误指的是语法错误，也可以称作解析错误
异常
指的是在语法正常的情况下，表达式引发的错误。程序并不会因为其而崩溃，而是将这种异常的以报错的方式显示出来。
既然我们知道了有异常一说（而且很多时候是无法避免的），那我们就该来处理这些异常。
```python
while Ture:
    try:
        x = int(input("Please enter a number"))
        break
    except ValueError:
        print("That was no vaild number!Please try again")    
```
*基本语法如上*
>我们需要输入一个整数，但是如果你要输入的不是整数会怎样？这时候就会提示错误（异常），而且提示如上就是ValueError。这里我们自行定义异常的提示结果。

### 异常处理
*由此我们就可以明白异常产生的一个原因，并且可以自行定义异常产生后处理。*
>那如果我们不知道程序会出现怎样的错误的该如何？这时就可以直接使用expect来将其异常归纳起来统一处理。在expect下加入else则表示没有异常就执行else后的程序块。

### 抛出异常
>接下来要说的时该如何抛出异常。为什么我们要抛出异常呢？

### 自定义异常
>自然异常出现我们也可以做自定义，通过创建新的异常except Error as e：来命名自己的异常。

### 异常清理行为
>最后来说的是异常的清理行为。假如我们在open了文件后出现异常导致没有close上文件，这样会引发一些不必要的问题。那么我们可以用try...finally来保证finally后的程序块必须执行，当然还有一种方法用with来代替try这是预定义的清理行为。

## 类
这是一个较麻烦的问题，但对于学过面向对象编程的人来说就较容易理解了。

## 附录
### 编码风格
>关于缩进符官网介绍的有三种，一个制表符、两个空格或者四个空格。注意这三种风格绝不能混用

**当然大多数人建议的尽量使用其中一种风格，并且长期使用它。而我的建议是我们就只把四个空格当作缩进符，因为Tab键存在平台之间的差异，虽然有时使用四个空格很是麻烦（那是因为你没有用到一款好的文本编辑器）。**

### 命名规则
*Python命名规则和大多数编程语言一样包含着数字、字母、下划线。（同样的首字符不能为数字）
这里的命名规则并没有强要求，你也可以灵活使用。
（比如整个项目中并没有使用多少全局变量的时候你就可以将其全部大写）

>关于变量
全使用小写字母，碰到多个单词合并成一个变量的时候可以使用_分隔

>关于函数
尽量小写，碰到多个单词合并的时候其后接单词使用大写

>关于类
首字母大写，多个单词合成时同函数的命名规则