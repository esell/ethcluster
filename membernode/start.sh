#!/bin/sh

geth init /root/bootstrap/genesis.json

if [ $? = 0 ]; then
    sleep 10
    BOOTNODE=`cat /root/bootstrap/boot_address`
    BOOTNODE_IP=`getent hosts bootnode | cut -d" " -f1`
    geth --networkid=123454 --bootnodes="enode://$BOOTNODE@$BOOTNODE_IP:30301"
else
    echo "init of genesis block failed, exiting..."
    return 1
fi
