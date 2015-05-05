# Ansible Masterbook

## list of roles

* common: install default package on every machines
* accounts: create accounts on any machine (requires root)
* devbox: install dev package (this could be splitted)
            * python
            * golang
            * rust
            * ...

* multimedia: install music or video package
* pythondev:
* golangdev:
* rustdev:


## ad-hoc roles
dotfiles: update given repos on all targets


## Todo:

### ad-hoc roles to add
remove_accounts: ad-hoc task to remove users and groups loaded from vars_files
                  on all machines

### roles to create
* fail2ban
* ansible: install and configure ansible
* postgress
* powerdns-recursor
* powerdns-authoritative
* clobber
* collectd or python-diammond
* influx-db
* graphite or graphana
* kodi
* wiki
* docker
* git
* shinken or nagios
* vagrant - install vagrant from website
* ldap
* redmine
* suspend_ram: cronjob to suspend machine to ram

### other tasks
*  configure sshd (PermitRootLogin)
*  ntp
*  fqdn
*  disk partionning (lvm)
*  backup (script from a git repo + cronjob) – one for the os and the other for
*  the data
*  tmpfs (mount /tmp in a tmpfs when there is enough ram ??? i think this doesn't allow
    you to suspend to ram)


## somes roles should be executed on all machines by default
ex:
* common
* accounts
* fail2ban
* shinken or nagios
* backup
* collectd or python-diammond
