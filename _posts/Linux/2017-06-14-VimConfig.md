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


# 插件
## Vundle 插件管理
```shell
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/nerdtree
```
### 添加至vimrc
```
"Vundle插件管理
set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" 让vundle管理插件版本
Plugin 'VundleVim/Vundle.vim'
"
"
"
"
"
"
"
"所有插件需要在下面这行上面
"安装插件的方式可以使用本地、git及网络安装
"示例
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
"Plugin 'tpope/vim-fugitive'
"重名插件
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()            " required

filetype plugin indent on    " required
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on

" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate 
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件

" :h vundle 查看帮助
" 将你自己对非插件片段放在这行之后
```

## NerdTree 目录树
```
" 设置NerdTree
"Plugin 'scrooloose/nerdtree' 
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F3> :NERDTreeToggle<CR>
"默认开启NERDTree
"autocmd VimEnter * NERDTree
"当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
```

### 使用说明
```
?: 快速帮助文档
o: 打开一个目录或者打开文件，创建的是buffer，也可以用来打开书签
go: 打开一个文件，但是光标仍然留在NERDTree，创建的是buffer
t: 打开一个文件，创建的是Tab，对书签同样生效
T: 打开一个文件，但是光标仍然留在NERDTree，创建的是Tab，对书签同样生效
i: 水平分割创建文件的窗口，创建的是buffer
gi: 水平分割创建文件的窗口，但是光标仍然留在NERDTree
s: 垂直分割创建文件的窗口，创建的是buffer
gs: 和gi，go类似
x: 收起当前打开的目录
X: 收起所有打开的目录
e: 以文件管理的方式打开选中的目录
D: 删除书签
P: 大写，跳转到当前根路径
p: 小写，跳转到光标所在的上一级路径
K: 跳转到第一个子路径
J: 跳转到最后一个子路径
<C-j>和<C-k>: 在同级目录和文件间移动，忽略子目录和子文件
C: 将根路径设置为光标所在的目录
u: 设置上级目录为根路径
U: 设置上级目录为跟路径，但是维持原来目录打开的状态
r: 刷新光标所在的目录
R: 刷新当前根路径
I: 显示或者不显示隐藏文件
f: 打开和关闭文件过滤器
q: 关闭NERDTree
A: 全屏显示NERDTree，或者关闭全屏
```

# .vimrc
```
set fileencodings=utf-8,gbk
set termencoding=utf-8
set encoding=utf-8

syntax on           "语法高亮
set nocompatible    "关闭vi兼容模式
set nu              "显示行号
set ruler           "打开状态栏标尺
set softtabstop=4   "退格键删除4个空格
set tabstop=4       "设置tab长度为 4
set nobackup        "覆盖文件不备份
set autochdir       "自动切换当前目录
set hlsearch        "搜索高亮
set magic           "设置魔术
set smartindent     "自动缩行
set backspace=indent,eol,start
set laststatus=2    "显示状态栏
set bg=dark "暗色背景

"history存储容量
set history=2000

"检测文件类型，采用不同的缩进格式
filetype on
filetype indent on
set autoindent

"备份设置
"set backup
"set backupext=.bak
"set backupdir=~/.bak/

"突出显示
set cursorcolumn
set cursorline

"设置退出显示的内容
set t_ti= t_te=

"显示状态栏内容
set ruler
set showcmd
set showmode

"搜索显示
set showmatch
set hlsearch
set ignorecase

"取消方向键
"map <Left> <Nop>
"map <Right> <Nop>
"map <Up> <Nop>
"map <Down> <Nop>

"python文件设置
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
func! DeleteTrailingWS()
        exe "normal mz"
        %s/\s\+$//ge
        exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

"脚本文件加入文件头
autocmd BufNewFile *.sh,*.py `exec` ":call SetTitle()"
func SetTitle()
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python") 
        call setline(2, "\# -*- encoding:utf-8 -*-") 
    endif
    if &filetype == 'sh'
        call setline(1, "\#!/usr/bin/sh") 
    endif
endfunc

"<F2>开关行号
function! HideNumber()
        if(&relativenumber == &number)
                set relativenumber! number!
        elseif(&number)
                set number!
        else
                set relativenumber!
        endif
                set number?
endfunc
nnoremap <F2> :call HideNumber()<CR>

"==========================================================="
" 设置pydiction
"==========================================================="
let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict' 
"菜单高度
let g:pydiction_menu_height = 3

"==========================================================="
" 设置NerdTree
"==========================================================="
"设置目录树位置
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
"<F3>开关目录树
map <F3> :NERDTreeToggle<CR>
"默认开启NERDTree
"autocmd VimEnter * NERDTree
"当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1

"设置<F4>保存文件
map <F4> :<ESC>:w<CR>


"==========================================================="
"Vundle插件管理
"==========================================================="
set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" 让vundle管理插件版本
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rkulla/pydiction'
"
"
"
"
"
"
"
"所有插件需要在下面这行上面
"安装插件的方式可以使用本地、git及网络安装
"示例
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
"Plugin 'tpope/vim-fugitive'
"重名插件
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()            " required

filetype plugin indent on    " required
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
```