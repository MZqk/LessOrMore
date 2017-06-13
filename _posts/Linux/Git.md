---
layout: post
#标题配置
title:  Git使用方法
#时间配置
date:   2017-06-13 14:08:00 +0800
#大类
categories: Linux
#小类
tag: bash 

---

* content
{:toc}


## Git 配置
添加git信息
```bash
git config --global user.name "Scott Chacon"   
git config --global user.email "schacon@gmail.com"
# --global 为全局选项
```
git信息配置文件
>~/.gitconfig

## Git仓库
克隆一个项目
```bash
git clone https://github.com/MZqk/boco
```
初始化一个仓库
```bash
cd ./
git init
```
## Git流程
```bash
git add
#添加新创建或修改的文件到本地的缓存区（Index）
git rm
#删除后会自动将已删除文件的信息添加到缓存区
git commit
#命令提交到本地代码库
git status
#查看当前git仓库的状态
git diff --cached
#如果没有--cached参数，git diff 会显示当前你所有已做的但没有加入到索引里的修改
git push origin master
#将本地仓库同步到远端服务器
```
## 分支与合并
```
git branch 
#查看当前的分支列表
git branch experimental
#创建一个新的叫 experimental的分支
git checkout experimental
#切换到experimental分支
git merge  -m 'merge experimental branch' experimental
#将experimental分支合并到当前分支
git branch -d experimental
#只能删除那些已经被当前分支的合并的分支. 如果你要强制删除某个分支的话就用git branch –D
git reset --hard HEAD^
#回到合并之前的状态
```
## Git日志
```
git log
#显示所有的提交
git log v2.5.. Makefile fs/
#找出所有从"v2.5“开始在fs目录下的所有Makefile的修改
git log --stat
打印详细的提交记录
git log --pretty=oneline
格式化日志输出,可用medium,full,fuller,email 或raw
git log --graph --pretty=oneline
可视化提交图
git log --pretty=format:'%h : %s' --topo-order --graph
提交按拓扑顺序来显示
```
