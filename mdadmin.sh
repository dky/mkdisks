#!/bin/bash

sudo mdadm --create /dev/md0 --level=0 --raid-devices=8 /dev/sdc /dev/sdd /dev/sde /dev/sdf /dev/sdg /dev/sdh /dev/sdi /dev/sdj
