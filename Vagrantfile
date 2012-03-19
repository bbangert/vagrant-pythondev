Vagrant::Config.run do |config|
  config.vm.box = "lucid64"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "pythondev.pp"
    puppet.module_path   = "modules"
  end
  config.vm.customize ["modifyvm", :id, "--memory", "512"]
end
