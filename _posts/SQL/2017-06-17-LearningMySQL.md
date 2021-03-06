---
layout: post
#标题配置
title:  mysql 学习过程
#时间配置
date:   2017-06-14 09:08:00 +0800
#大类
categories: SQL
#小类
tag: mysql
---

* content
{:toc}


# MySQL
## 安装MySQL
```
sudo apt-get install mysql-server
```
启动服务
>sudo service mysql start

登入mysql 
>mysql -u username -p 

设置密码
>set password=password('root123')

查看数据库
>show databases

连接数据库
>use db_name

查看正在使用的数据库
>select database()

查看表
>show tables

查看表结构
>select columns from tbl_naem

查询当前时间 
>select now() 

字符集 
>show character set
## 创建MySQL数据库

创建数据库
>create database ab_name

新建数据表
>creat table tbl_name 数据类型)

### 数值型数据
|数据类型|用途|字节|
|----|------|-----|
|INT|整数|4|
|FLOAT|单精度浮点类型|4|
|DOUBLE|双精度浮点类型|8|
|CHAR|定长字符串|0~255|
|VARCHAR|变长字符串|0~255|
|EMU|单选||
|SET|多选||
|DATE|日期|3|
|TIME|时间|3|
|YEAR|年份|1|
删除数据库 
>DROP DATABASE db_name 

检查表定义 
>desc tbl_name 

创建临时表 
>create table tbl_name as 
from db_name

修改表 
>ALTER TABLE tabl_name 

插入数据 
>insert into tbl_name(列名) values (赋值) 

更新数据 
>update tab_name 
set 

删除数据 
> delete from tbl_name 
> where 条件

## SQL约束
**约束分类**
|约束类型：|主键|默认值|唯一|外键|非空|
|---|----|----|---|---|---|
|关键字：|PRIMARY KEY|DEFAULT|UNIQUE|FOREIGN KEY|NOT NULL|
主键
>用于约束表中的一行，作为这一行的唯一标识符，
在一张表中通过主键就能准确定到一行。
主键不能有重复且不能为空。

默认约束
>插入书数据为空时，将使用么默认值。

唯一约束
>规定一张表中制定的一列的值不能有重复值

外键约束
>

非空约束
>插入值不能有空值
## SELECT查询数据

|子句名称|使用目的|
|-----|------|
|select|	确定结果集中应该包含那些列|
|from	|指明所要提取数据的表，以及这些表是如何连接|
|where	|过滤不需要的数据|
|group by|	用于对具有相同列值的行进行分组|
|having	|过滤掉不需要的组|
|order by|	按一个或多个列，对最后结果集中的行进行排序|
|distinct| 返回唯一不同的值|

### 运算符
"AND" "OR"
>select * from tbl_name where age>25 and age<30

>select * from tbl_name where age<25 or age>30
 
"IN" "NOT IN"
>select * from tbl_name where age in(26,27,28,29)

>select * from tbl_name where age not in(26,27,28,29)

|运算符| 描述|
|---|---|
|=  | 等于|
|<>  |不等于。注释：在 SQL 的一些版本中，该操作符可被写成 !=|
|>   |大于|
|<   |小于|
|>=  |大于等于|
|<=  |小于等于|
|BETWEEN |在某个范围内|
|LIKE    |搜索某种模式|
|IN  |指定针对某个列的多个可能值|

### 通配符

like
“-”：代表一个未知字符
“%”：代表不定个字符
>select * from tbl_name where age like '2_'

**排序**
1. 升序或降序排序
默认情况下是升序排序，降序情况下时加上desc关键字即可。 
2. 根据表达式排序 
order by 子句后增加表达式 
3. 根据数字占位符排序 
select 子句中的位置号来替代列名
>select * from tbl_name orde by age desc

**函数**
|函数名|count|sum|avg|max|min|
|------|-----|-------|------|------|------|
|作用|计数|求和|平均值|最大值|最小值|

## 数据库修改
### 重命名数据表
>rename table tbl_1 to tbl_2
>alter table tbl_1 rename tabl_2
>alter table tbl_1 rename to tbl_2
删除数据表
>drop table tbl_name

### 对表结构的修改

增加一列
>alter table tbl_name add column 列名 数据类型 约束

>alter table tbl_name add 列名 数据类型 约束

删除一列
> alter table tbl_name drop column 列名

> alter table tbbl_name drop 列名

重命名一列
> alter table tbl_name change 原列名 新列名 数据类型 约束

改变数据类型
> alter table tbl_name modify 列名  数据类型

### 表内容修改

修改表中值
> update tbl_name set 列名=值
> where 条件

删除一行记录
> delete from tbl_name 
> where 条件

添加一行数据
> insert into talbles (column1,column2,column3)
> values (var1,var2,var3)