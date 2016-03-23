#!/bin/sh
echo -n '{"data": [';
sep='';
for i in `find /sys/block -name md* -printf "%f\n"`; do 
        echo -n $sep'{ "{#MDNAME}": "'$i'" }';
        sep=','
done;

echo -n ']}'