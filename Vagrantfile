Vagrant.configure(2) do |config|
   config.vm.define "test" do |test|
      test.vm.box = "geerlingguy/centos7"
      test.vm.hostname = "test"
      test.vm.network :private_network, ip: "192.168.33.32"
      test.vm.network "forwarded_port", guest: 80, host: 8080
      test.vm.provision "ansible" do |ansible|
        ansible.compatibility_mode = "2.0"
        ansible.playbook = "provisioning/sites.yml"
        ansible.config_file = "provisioning/ansible.cfg"
      end
      test.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.memory = 3072
        vb.cpus = 2
        vb.customize ["guestproperty", "set", :id, "--timesync-threshold", "1000"]
        vb.customize ["guestproperty", "set", :id, "--timesync-interval", "1000"]
      end
   end
end