# Vagrant Box for developments

## Presentation

This box include the following developments tools :

- OS : ubuntu
- Ansible
- Jdk 1.8 (OpenJdk)
- NodeJS
- Git
- Maven
- Eclipse (with some plugin)
- Chrome

## Requirements

Required tools :

- GIT
- Vagrant
- Virtualbox
- Babun (not necessary)

## Start the Box

1. Clone the repository

```
# In DOS console
git clone https://github.com/apenvern/vagrant
cd vagrant/vagrant-ansible-dev-box
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

## Stop the Box

```
# In DOS console
vagrant halt
```

## Connect via ssh to the Box

```
# In DOS console with ssh in the path (with babun)
vagrant ssh
```

## Configure the tools provisioning in the Box

If you want that Ansible provide a tools just delete it in provisioning/playbook.yml.
