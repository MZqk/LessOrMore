---
layout: post
#标题配置
title:  我的vim配置
#时间配置
date:   2017-06-14 09:08:00 +0800
#大类
categories: Linux
#小类
tag: vim
---

* content
{:toc}



```vim
syntax on           "语法高亮
set nocompatible    "关闭vi兼容模式
set nu              "显示行号 
#set nonu           “取消行号
set ruler           "打开状态栏标尺
set softtabstop=4   "退格键删除4个空格
set tabstop=4       "设置tab长度为 4
set nobackup        "覆盖文件不备份
set autochdir       "自动切换当前目录
set hlsearch        "搜索高亮
set magic           "设置魔术
set smartindent     "自动缩行
#set autoindent     ---
set backspace=indent,eol,start
set laststatus=2    "显示状态栏
#set showmode       ---
set bg=dark "暗色背景
#set backup         ”自动备份文件
#自动添加文件头
```