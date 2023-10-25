#!/usr/bin/bash

# time
timedatectl set-timezone America/Denver && echo "timezone set" || echo "timezone not set"

# update
# apt update -yqq; apt upgrade -yqq

# guest agents
apt install -yqq qemu-guest-agent spice-vdagent &> /dev/null && echo "guest agents installed" || echo "guest agents not installed" 
systemctl start qemu-guest-agent && echo "qemu-guest-agent started" || echo "qemu-guest-agent not started"
systemctl start spice-vdagent && echo "spice-vdagent started" || echo "spice-vdagent not started"

# xresize
ln -s /vagrant/xresize/xresize /usr/local/bin && echo "xresize added to path" || echo "xresize not added to path"
ln -s /vagrant/xresize/xresize-loop /usr/local/bin && echo "xresize-loop added to path" || echo "xresize-loop not added to path"
mkdir -p /home/vagrant/.config/autostart && echo "autostart directory created" || echo "autostart directory not created"
ln -s /vagrant/xresize/xresize-loop.desktop /home/vagrant/.config/autostart && echo "xresize-loop set to autostart" || echo "xresize not set to autostart"

# wallpaper
# rm /usr/share/backgrounds/kali-16x9/default && echo "default background removed" || echo "default background not removed"
# ln -s /usr/share/backgrounds/kali-16x9/kali-glitchsea.jpg /usr/share/backgrounds/kali-16x9/default && echo "default background set" || echo "default background not set"

