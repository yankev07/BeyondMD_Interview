Vagrant.configure("2") do |config|
    config.vm.box = "debian-sandbox/bookworm64"
    config.vm.network "forwarded_port", guest: 8080, host: 3000
  
    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end
  end
  