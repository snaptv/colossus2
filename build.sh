#!/bin/bash -uex

make

sudo cp 99-Hauppauge-PVR2.rules /etc/udev/rules.d/
sudo cp Common/settings.cfg /etc/hauppauge-colossus2.cfg
sudo mkdir -p /lib/firmware/hauppauge
sudo cp Common/EncoderDev/HAPIHost/bin/mips_vx_host_slave.bin /lib/firmware/hauppauge
sudo cp Common/EncoderDev/HAPIHost/bin/llama_usb_vx_host_slave_t22_24.bin /lib/firmware/hauppauge
sudo cp TestApp/build/HDPVR2-testApp /usr/sbin
