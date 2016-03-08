#!/bin/bash

DISKPATH=/dev/sd

#Update this start/end range with your drive letters ex: /dev/sdac /dev/sdd...
START=c
END=f


read -p "This script is destructive and will wipe out your partitions, Are you sure? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	for i in `eval echo {$START..$END}`;
	do
		dd if=/dev/zero of=$DISKPATH$i bs=512 count=1
		(echo n; echo p; echo 1; echo; echo; echo t; echo fd; echo w) | fdisk $DISKPATH$i
	done
fi
