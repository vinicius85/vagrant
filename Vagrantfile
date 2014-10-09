Vagrant.configure("2") do |config|
  
	config.vm.define "centos" do |centos|
		centos.vm.provision "file" , source: "~/vagrant/epel.repo", destination:"/home/vagrant/epel.repo"
		centos.vm.box = "puppetlabs/centos-6.5-64-puppet"
		centos.vm.provision "shell", path: "centos/bootstrap.sh"
		centos.vm.synced_folder "~/vagrant/centos", "/export/synced/", mount_options: ["dmode=777,fmode=777"]
	end
  
end