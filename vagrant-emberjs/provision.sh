#!/bin/bash
# Vagrant provisionning for EmberJS box

# Installing Ubuntu build dependencies
apt-get install -y cifs-utils git autoconf automake build-essential python-dev

# Installing Samba
apt-get install -y samba samba-common python-glade2 system-config-samba

# Install NodeJS 
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get install -y nodejs
node --version
npm --version

# Install npm dependencies
npm install -g bower ember-cli

# Install watchman
# Watchman is redommended by EmberJS Team : https://ember-cli.com/user-guide/#watchman
git clone https://github.com/facebook/watchman.git /opt/watchman
cd /opt/watchman
git checkout v4.7.0  # the latest stable release
./autogen.sh
./configure
make
make install
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Samba configuration
share=/workspace
mkdir -p $share
chmod -R 0755 $share
chown -R vagrant:vagrant $share

mv /home/vagrant/smb.conf /etc/samba/smb.conf

smb_password=vagrant
(echo $smb_password; echo $smb_password) | smbpasswd -a vagrant

service smbd restart

# Setting up local workspace
chown -h vagrant:vagrant /workspace
