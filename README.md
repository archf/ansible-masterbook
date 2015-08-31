# Ansible Masterbook

# Prerequisite

Install git and ansible on the control machine:
```bash
# Debian
apt-get -y install ansible sudo
# rhel
sudo yum -y install ansible sudo
# or
dnf install -y install ansible sudo
```
## list of quite stable roles

* common: install default package on every machines
  * fail2ban
  * ntp
  * disable selinux
* accounts: create accounts on any machine (requires root)
* workstation: install package for daily work (this could be splitted eventually)
            * python
            * golang
            * rust
            * ...

    Currently installs:
    - python3-ipython
    - python3-ipdb
    - python3-devel
    - python-pip
    - inotify-tools-devel
    - pandoc
    - urlview

wip:
  * backup
  * docker
  * collectd
  * ansiblecm: install and configure an ansible control machine
  * network: configure nic on a target
  * openWrt
  * workstation
  * openssh: template sshd-config
  * multimedia: install multimedia packages

todo soon:
  * git-install: install from a git repo
  * tar-install: install from a tarball

## roles from other people
  * gitlab: https://galaxy.ansible.com/list#/roles/516
  * exim: https://galaxy.ansible.com/list#/roles/4842
  * grafana: https://github.com/azavea/ansible-grafana
  * influxdb:

## Todo:

### roles to find or create
* remote-desktop
* ansible: install and configure ansible
* postgress
* powerdns-recursor
* powerdns-authoritative
* cobbler
* collectd or python-diammond
* influx-db
* graphite or graphana
* kodi
* wiki
* shinken or nagios
* vagrant - install vagrant from website
* ldap
* redmine
* suspend_ram: cronjob to suspend machine to ram

* multimedia: install music or video package
* pythondev:
* golangdev:
* rustdev:

### ad-hoc roles
* dotfiles: update given repos on all targets
* accounts-remove: remove given accounts on all targets

### other tasks
*  ntp
*  fqdn
*  disk partionning (lvm)
*  backup (script from a git repo + cronjob) – one for the os and the other for
*  the data
*  tmpfs (mount /tmp in a tmpfs when there is enough ram ??? i think this doesn't allow
    you to suspend to ram)

### somes roles should be executed on all machines by default
ex:
* common
* accounts
* fail2ban
* shinken or nagios
* backup: install backup scripts
* collectd or python-diammond
