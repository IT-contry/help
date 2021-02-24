#!/bin/bash
echo "Hello enter set TTL"
echo -n  "64 and 65 - "


read st

my_var1=64

if [[ $my_var1 = $st ]]
then
    echo 'set 64 ttl'
    sudo iptables -t mangle -A POSTROUTING -j TTL --ttl-set 64
    echo 'Done'
else
    echo 'set 65 ttl'
    sudo iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65
    echo 'Done'
fi

