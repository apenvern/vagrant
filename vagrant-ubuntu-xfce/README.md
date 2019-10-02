# Vagrant Box for Ubuntu with Xfce Desktop

- [Vagrant Box for Ubuntu with Xfce Desktop](#vagrant-box-for-ubuntu-with-xfce-desktop)
  - [Presentation](#presentation)
  - [Use](#use)
  - [Build](#build)
    - [Requirements](#requirements)
    - [Start the Box](#start-the-box)
      - [1. Clone the repository](#1-clone-the-repository)
      - [2. Configure the Proxy (if you need it)](#2-configure-the-proxy-if-you-need-it)
      - [3. Start the box and provisioning](#3-start-the-box-and-provisioning)
    - [Stop the Box](#stop-the-box)
    - [Connect via ssh to the Box](#connect-via-ssh-to-the-box)
    - [Package the Box](#package-the-box)

## Presentation

This box include the following element :

- OS : ubuntu-18.10 from <http://chef.github.io/bento/>
- Desktop : Xfce4

## Use

The box is store on <https://app.vagrantup.com/>

The Vagrantfile

```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "apenvern/ubuntu-18.10-xfce4"
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

#### 1. Clone the repository

```dos
# In DOS console
git clone https://github.com/apenvern/vagrant
cd vagrant/vagrant-ubuntu-xfce
```

#### 2. Configure the Proxy (if you need it)

```dos
# Set your proxy settings
set HTTPS_PROXY=http://proxy-host:proxy-port
set HTTP_PROXY=https://proxy-host:proxy-port
set NO_PROXY=localhost,127.0.0.1
```

#### 3. Start the box and provisioning

```dos
vagrant up --provider virtualbox --provision
```

### Stop the Box

```dos
# In DOS console
vagrant halt
```

### Connect via ssh to the Box

```dos
# In DOS console with ssh in the path (with babun)
vagrant ssh
```

### Package the Box

```dos
# In DOS console
vagrant package --output ubuntu-18.10-xfce-X.Y.Z.box
```
