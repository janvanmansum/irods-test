Vagrant.configure(2) do |config|
   config.vm.define "testvm" do |testvm|
      testvm.vm.box = "geerlingguy/centos6"
      testvm.vm.hostname = "testvm"
      testvm.vm.network :private_network, ip: "192.168.33.32"
      testvm.vm.network "forwarded_port", guest: 80, host: 8080
      testvm.vm.provision "ansible" do |ansible|
        ansible.playbook = "provisioning/sites.yml"
        ansible.config_file = "provisioning/ansible.cfg"
      end
      testvm.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.memory = 3072
        vb.cpus = 2
        vb.customize ["guestproperty", "set", :id, "--timesync-threshold", "1000"]
        vb.customize ["guestproperty", "set", :id, "--timesync-interval", "1000"]
      end
   end
end