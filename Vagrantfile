Vagrant.configure("2") do |config|
  config.vm.box = 'bgch_secure_1404'
  config.vm.box_url = 'http://dist.bgchtest.info:/vagrant/bgch_secure_1404.box'
  config.vm.provision "shell", inline: <<-SHELL
     apt-get update
     apt-get install -y nginx
     apt-get purge -y docker
     apt-get install -y docker.io
  SHELL
  config.vm.synced_folder './working', '/working'

end
