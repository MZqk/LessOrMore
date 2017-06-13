# sed
## sed语法
|参数|说明|
---|---
-n|显示处理后的过程，自动换行
## sed用法
文件内容
>line 1 This is a book  
line 2 That is a pen    
line 3 Happy Holiday    
line 4 Niscenter is a good place    
line 5 End


删除第2到4行内容
```
sed '2,4d' file
```
>line 1 This is a book  
line 5 End

替换每行第一个is为error
```
sed 's/is/error/' file
```
>line 1 Therror is a book   
line 2 That error a pen 
line 3 Happy Holiday    
line 4 Nerrorcenter is a good place     
line 5 End

替换全部的is为error
```
sed 's/is/error/g' file
```
>line 1 Therror error a book    
line 2 That error a pen     
line 3 Happy Holiday    
line 4 Nerrorcenter error a good place  
line 5 End  

在有center内容的一行替换is为xx
```
sed '/center/s/is/xx/g' file
```
>line 1 This is a book  
line 2 That is a pen    
line 3 Happy Holiday    
line 4 Nxxcenter xx a good place    
line 5 End