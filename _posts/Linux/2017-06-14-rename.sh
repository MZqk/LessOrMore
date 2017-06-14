#bin/bash

for i in `ls`
do
    mv -f $i `date +%Y-%m-%d`-$i
done    
