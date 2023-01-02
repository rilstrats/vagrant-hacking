#!/usr/bin/bash

# time
timedatectl set-timezone America/Denver

# update
# apt update -yqq; apt upgrade -yqq

# guest agents
apt install -yqq qemu-guest-agent spice-vdagent
systemctl start qemu-guest-agent
systemctl start spice-vdagent

# xresize
ln -s /vagrant/xresize/xresize /vagrant/xresize/xresize-loop /usr/local/bin
ln -s /vagrant/xresize/xresize-loop.desktop /home/vagrant/.config/autostart

# wallpaper
rm /usr/share/backgrounds/kali-16x9/default
ln -s /usr/share/backgrounds/kali-16x9/kali-glitchsea.jpg /usr/share/backgrounds/kali-16x9/default

