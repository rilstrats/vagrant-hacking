Vagrant.configure('2') do |config|
  config.vm.define :kali, primary: true do |kali|
    # kali.vm.box = "rilstrats/kali"
    # begin box creation
    kali.vm.box = 'kalilinux/rolling'
    # kali.ssh.insert_key = false
    kali.vm.provision :shell, path: 'provision.sh'
    # end box creation
    # kali.vm.synced_folder "/home/rilstrats/nas/cyber", "/home/vagrant/cyber", type: "nfs"
    kali.vm.provider :libvirt do |lv|
      lv.cpus = 2
      lv.memory = 4096
      lv.video_vram = 256
    end
  end

  # config.vm.define :ubuntu do |ubuntu|
  #   ubuntu.vm.box = "tmarchst/metasploitable3-ub1404"
  # end

  # config.vm.define :windows do |windows|
  #   windows.vm.box = "tmarchst/metasploitable3-win2k8"
  #   windows.vm.guest = :windows
  #   windows.vm.communicator = "winrm"
  #   windows.vm.provider :libvirt do |lv|
  #     lv.cpus = 2
  #     lv.memory = 4096
  #     lv.video_vram = 256
  #   end
  # end
end
