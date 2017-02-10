#!/bin/bash

/geth init /root/bootstrap/genesis.json

if [ $? = 0 ]; then
    # hack to write out the key AND exit
    /bootnode -genkey /root/bootstrap/boot.key -writeaddress
    /bootnode -nodekey /root/bootstrap/boot.key -writeaddress > /root/bootstrap/boot_address
    /bootnode -nodekey /root/bootstrap/boot.key
else
    echo "init of genesis block failed, exiting..."
    return 1
fi
