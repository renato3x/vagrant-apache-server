# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # define a imagem que será utilizada na vm
  config.vm.box = "ubuntu/trusty64"

  # define a configuração de rede da sua vm
  # "forwared_port" significa que você está fazendo um redirecionamento de porta
  # assim como é feito com o Docker ao informar que a aplicação que roda na porta 3000 será exposta pela porta 5000
  # nesse caso, a porta 80 (guest) será exposta pela porta 8080 (host)
  # o host_ip define o IP da máquina host que, nesse caso, é a localhost
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # define o script que será executado na primeira vez que a vm
  # for criada, permitindo a instalação de dependências 
  config.vm.provision "shell", path: "provision.sh"
end
