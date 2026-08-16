#!/bin/bash

while read -r i || [ -n "$i" ]
do
output=$(nslookup $i | grep "name =" | sed 's/\.$//' | awk '{print $4}')
#Alternate output=$(dig $i +short) 
#Alternate for reverse lookup output=$(dig -x $i +short)
    if [ -n "$output" ]
    then 
        echo $i "->" $output >> logs.txt
    else
        echo $i "-> No record present" >> logs.txt
    fi
done < dns.txt

