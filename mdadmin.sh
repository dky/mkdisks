#!/bin/bash

sudo mdadm --create /dev/md0 --level=0 --raid-devices=16 /dev/sdc /dev/sdd /dev/sde /dev/sdf /dev/sdg /dev/sdh /dev/sdi /dev/sdj /dev/sdk /dev/sdl /dev/sdm /dev/sdn /dev/sdo /dev/sdp /dev/sdq /dev/sdr

sudo mkdir /etc/mdadm/
sudo mdadm --detail --scan > /etc/mdadm/mdadm.conf
