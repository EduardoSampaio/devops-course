#bin/sh
sudo yum -y install epel-release
echo "Inicio da instalacao do ansible"
sudo yum -y install nano
sudo yum -y install ansible
sudo ansible-galaxy role install geerlingguy.mysql --ignore-cert
cat <<EOT >>/etc/hosts
192.168.56.155 control-node
192.168.56.156 app01
192.168.56.157 db01
EOT
