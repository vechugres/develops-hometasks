# develops-hometasks
https://app.vagrantup.com/vechugres/boxes/centos8

 sudo usermod -aG wheel vagrant
   sudo yum install httpd -y
   sudo systemctl enable httpd
   sudo systemctl start httpd
   sudo systemctl stop firewalld
   sudo systemctl disable firewalld
   sudo systemctl start httpd
   sudo yum install mysql-server -y
   sudo systemctl enable mysqld
   sudo systemctl start mysqld
   sudo yum install php php-mysqlnd -y
   sudo systemctl enable php-fpm.service
   sudo systemctl start php-fpm.service
   sudo yum install nano -y
   sudo setenforce 0
   sudo su
   sudo echo "SELINUX=disabled" > /etc/selinux/config
   sudo echo "AuthorizedKeysFile  %h/.ssh/authorized_keys" > /etc/ssh/sshd_config

   sudo mkdir -pm 700 /home/vagrant/.ssh
   sudo wget --no-check-certificate https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub -O authorized_keys
   sudo chmod 0600 /home/vagrant/.ssh/authorized_keys
   sudo chown -R vagrant:vagrant /home/vagrant/.ssh
