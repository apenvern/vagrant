# Vagrant Box for Ubuntu with Gnome Desktop

## Presentation

This box include the following element :

- OS : ubuntu-18.10 from http://chef.github.io/bento/
- Desktop : Gnome 3

## Use

The box is store on https://app.vagrantup.com/

The Vagrantfile

```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "apenvern/ubuntu-18.10-desktop"
  config.vm.box_version = "0.0.1"
end
```

## Build

### Requirements

Required tools :

- GIT
- Vagrant
- Virtualbox
- Babun (not necessary)

### Start the Box

1. Clone the repository

```
# In DOS console
git clone https://github.com/apenvern/vagrant
cd vagrant/vagrant-ubuntu-desktop
```

2. Configure the Proxy (if you need it)

```
# Set your proxy settings
set HTTPS_PROXY=http://proxy-host:proxy-port
set HTTP_PROXY=https://proxy-host:proxy-port
set NO_PROXY=localhost,127.0.0.1
```

3. Start the box and provisioning
```
vagrant up --provider virtualbox --provision
```

### Stop the Box

```
# In DOS console
vagrant halt
```

### Connect via ssh to the Box

```
# In DOS console with ssh in the path (with babun)
vagrant ssh
```

### Package the Box

```
# In DOS console
vagrant package --output ubuntu-18.10-desktop-X.Y.Z.box
```
