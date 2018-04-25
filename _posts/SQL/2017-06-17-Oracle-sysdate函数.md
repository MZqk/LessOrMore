---
layout: post
#标题配置
title:  sysdate函数
#时间配置
date:   2017-06-14 09:08:00 +0800
#大类
categories: SQL
#小类
tag: oracle
---

* content
{:toc}

# Oracle 时间函数

## 天粒度
SELECT TRUNC(sysdate,'DD') FROM dual;
sysdate+1 加一天

## 小时粒度
* 取10天前0点
SELECT TRUNC(sysdate-10,'DD') FROM dual;
* 取3小时前
SELECT TRUNC(sysdate-3/24,'HH') FROM dual; 
select sysdate  - 3/24 from taa_onerow
sysdate+1/24 加1小时

## 分钟粒度
sysdate+1/(24*60) 加1分钟
sysdate+1/(24*60*60) 加1秒钟
类推至毫秒0.001秒

## 函数运算
加法 
select sysdate,add_months(sysdate,12) from dual;        --加1年 
select sysdate,add_months(sysdate,1) from dual;        --加1月 
select sysdate,to_char(sysdate+7,'yyyy-mm-dd HH24:MI:SS') from dual;  --加1星期 
select sysdate,to_char(sysdate+1,'yyyy-mm-dd HH24:MI:SS') from dual;  --加1天 
select sysdate,to_char(sysdate+1/24,'yyyy-mm-dd HH24:MI:SS') from dual;  --加1小时 
select sysdate,to_char(sysdate+1/24/60,'yyyy-mm-dd HH24:MI:SS') from dual;  --加1分钟 
select sysdate,to_char(sysdate+1/24/60/60,'yyyy-mm-dd HH24:MI:SS') from dual;  --加1秒 
减法 
select sysdate,add_months(sysdate,-12) from dual;        --减1年 
select sysdate,add_months(sysdate,-1) from dual;        --减1月 
select sysdate,to_char(sysdate-7,'yyyy-mm-dd HH24:MI:SS') from dual;  --减1星期 
select sysdate,to_char(sysdate-1,'yyyy-mm-dd HH24:MI:SS') from dual;  --减1天 
select sysdate,to_char(sysdate-1/24,'yyyy-mm-dd HH24:MI:SS') from dual;  --减1小时 
select sysdate,to_char(sysdate-1/24/60,'yyyy-mm-dd HH24:MI:SS') from dual;  --减1分钟 
select sysdate,to_char(sysdate-1/24/60/60,'yyyy-mm-dd HH24:MI:SS') from dual;  --减1秒