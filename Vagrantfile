scriptIE = <<SCRIPT
/cygdrive/c/webdrivers/node.bat &> selenium.log &
SCRIPT

scriptHubPre = <<SCRIPT
sudo apt-get clean && apt-get update
sudo apt-get install --no-install-recommends -y openjdk-7-jdk wget
echo "Setup is done."
SCRIPT

scriptHubStart = <<SCRIPT
java -jar /vagrant/selenium.jar -role hub -hubConfig /vagrant/hub.json &> selenium.log &
echo "Grid Hub started"
SCRIPT

Vagrant::configure("2") do |config|
	
	# Configure Hub
	name = "hub"
	config.vm.define name do |node|
		node.proxy.http     = ENV["http_proxy"]
		node.proxy.https    = ENV["https_proxy"]
		node.proxy.no_proxy = "localhost,127.0.0.1"
		node.vm.box_url = "http://files.vagrantup.com/precise32.box"
		node.vm.box = "Ubuntu Precise 32"
   		node.vm.network "forwarded_port", host: 4444, guest: 4444
		node.vm.network "private_network", ip: "192.168.10.101"
   		node.vm.provision "shell", inline: scriptHubPre
   		node.vm.provision "shell", inline: scriptHubStart, privileged: false
	end

	# Configure IE Nodes
	for i in 1..1
		name = "node_IE_#{i}"
		config.vm.define name do |node|
    		node.vm.box_url = ENV["boxLoc"]
    		node.vm.box = "ie9-win7"
   			node.vm.guest = :windows
    		node.vm.synced_folder ".", "/vagrant", :disabled => true

#    		node.vm.network "forwarded_port", host: i*1000 + 389 + i, guest: 3389
#    		node.vm.network "forwarded_port", host: i*1000 + 555, guest: 5555
    		node.ssh.username = "IEUser"
    		node.ssh.password = "Passw0rd!"
    		node.ssh.insert_key = false

    		node.vm.provider "virtualbox" do |v|
        		#v.gui = true
				v.customize ["modifyvm", :id, "--nic2", "hostonly" ]
    		end

    		node.vm.provision "shell", inline: scriptIE, privileged: false

		end
	end
end
