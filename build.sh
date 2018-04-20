#!/bin/bash -uex

make

sudo cp Common/settings.cfg /etc/hauppauge-colossus2.cfg
sudo mkdir -p /lib/firmware/hauppauge
sudo cp Common/EncoderDev/HAPIHost/bin/mips_vx_host_slave.bin /lib/firmware/hauppauge/mips_vx_host_slave.bin
sudo cp TestApp/build/HDPVR2-testApp /usr/sbin
