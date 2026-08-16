#!/bin/bash


is_ip(){
    [[ $1 =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]$ ]]
}

while read -r i || [ -n "$i" ]
do  
    if is_ip "$i"
    then
        output=$(dig -x $i +short +time=5)   # this is REVERSE lookup, but you labeled it "forward"
    
    else
        output=$(dig $i +short +time=5)      # this is FORWARD lookup, but you labeled it "Reverse lookup"
    fi

    #To update status in log file
    if [ -n "$output" ]
    then 
        echo $i "->" $output >> logs.txt
    else
        echo $i "-> No record present" >> logs.txt
    fi
done < dns.txt




