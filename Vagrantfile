Vagrant.configure("2") do |config|
  
    config.vm.define "amaster" do |amaster|
      amaster.vm.box_download_insecure = true
      amaster.vm.box = "hashicorp/bionic64"
      amaster.vm.synced_folder "./vagrant_machines", "/amaster_data"
      amaster.vm.network "private_network", ip: "192.168.59.1"
      amaster.vm.hostname = "amaster"
      amaster.vm.provider "virtualbox" do |v|
        v.name = "amaster"
        v.memory = 3072
        v.cpus = 2
        v.gui = false

      end
    end


    config.vm.define "kmaster" do |kmaster|
      kmaster.vm.box_download_insecure = true
      kmaster.vm.box = "hashicorp/bionic64"
      kmaster.vm.synced_folder "./vagrant_machines", "/kmaster_data"
      kmaster.vm.network "private_network", ip: "192.168.59.2"
      kmaster.vm.hostname = "kmaster"
      kmaster.vm.provider "virtualbox" do |v|
        v.name = "kmaster"
        v.memory = 3072
        v.cpus = 2
        v.gui = false

      end
    end

    config.vm.define "kworker" do |kworker|
      kworker.vm.box_download_insecure = true
      kworker.vm.box = "hashicorp/bionic64"
      kworker.vm.synced_folder "./vagrant_machines", "/kworker_data"
      kworker.vm.network "private_network", ip: "192.168.59.3"
      kworker.vm.hostname = "kworker"
      kworker.vm.provider "virtualbox" do |v|
        v.name = "kworker"
        v.memory = 3072
        v.cpus = 2
        v.gui = false

      end
    end

  
  end
  