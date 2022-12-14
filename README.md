# Vagrant Libvirt

Virtualbox and VMware virtual machines are configured perfectly out of the box and I wanted the same experience on my QEMU virtual machine. Enjoy!

- https://developer.hashicorp.com/vagrant/docs
- https://www.rubydoc.info/gems/vagrant-libvirt/0.0.11
## Host Setup

### QEMU/KVM

Follow these two guides from Chris Titus Tech to install Qemu/KVM correctly

- https://christitus.com/vm-setup-in-linux/
- https://christitus.com/setup-qemu-in-archlinux/

### Virt Manager

Open Virt Manager and change these settings:

- Edit > Preferences > Console
  - Graphical Console Scaling: Never
  - Resize guest with window: On

### Vagrant

Install vagrant and dependencies

Fedora:

```bash
sudo dnf install vagrant libvirt libvirt-devel
```

## Usage

Copy the template directory that most closely represents your desired OS/Distro. Change the directory name to your OS/Distro name.

Inside the vagrantfile, change the `config.vm.box` to your desired vagrant box from https://app.vagrantup.com/boxes/search. If desired, change the RAM, CPU, and VRAM allocations as well.

You should now be ready to `vagrant up`. To acccess the GUI use Virt Manager. Standard vagrant username/password is `vagrant`/`vagrant`.

