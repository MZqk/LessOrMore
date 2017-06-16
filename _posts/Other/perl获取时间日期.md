```perl
perl -e "use POSIX qw(strftime); print strftime '%Y%m%d' , localtime( time()-3600*24*30) "
```
