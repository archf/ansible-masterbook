# ansible-lxcm

A role to manage lxc containers on a host.

## Description

The goal is to get vagrant, vagrant-lxc, livirt-lxc out of the way.
Define useful alias

```bash
# start container (akin to vagrant up)
alias acu="ansible -i local -e lxcm_state=started"

# start container (akin to vagrant halt)
alias ach="ansible -i local -e lxcm_state=stopped"

# start container (akin to vagrant reload)
alias acu="ansible -i local -e lxcm_state=restarted"

# start container (akin to vagrant destroy)
alias acd="ansible -i local -e lxcm_state=absent"

# freeze container
alias acu="ansible -i local -e lxcm_state=frozen"
```


## Requirements

### Ansible version

Minimum required ansible version is 2.0.

## Role Variables

### Variables conditionally loaded

None.

### Default vars

Defaults from `defaults/main.yml`.

```yaml
# defaults file for ansible-lxcm

private_dir: "{{ playbook_dir }}/private"

lxcm_default_grp: "{{ ansible_hostname }}_c"

# default container group to add container instance to
lxcm_child_grp:
  - "all_c"

# default dns domain (used when generating inventory dynamically)
lxcm_domain: "lxc"

# boolean to figure if we need to reprovision or not. Value dependends on
# lxcm_state.
lxcm_provision: false

```


## Installation

### Install with Ansible Galaxy

```shell
ansible-galaxy install archf.lxcm
```

Basic usage is:

```yaml
- hosts: all
  roles:
    - role: archf.lxcm
```

### Install with git

If you do not want a global installation, clone it into your `roles_path`.

```shell
git clone git@github.com:archf/ansible-lxcm.git /path/to/roles_path
```

But I often add it as a submdule in a given `playbook_dir` repository.

```shell
git submodule add git@github.com:archf/ansible-lxcm.git <playbook_dir>/roles/lxcm
```

As the role is not managed by Ansible Galaxy, you do not have to specify the
github user account.

Basic usage is:

```yaml
- hosts: all
  roles:
  - role: lxcm
```


## Dependencies

None.

## License

MIT.

## Author Information

Felix Archambault.

---
This README was generated using ansidoc. This tool is available on pypi!

```shell
pip3 install ansidoc

# validate by running a dry-run (will output result to stdout)
ansidoc --dry-run <rolepath>

# generate you role readme file
ansidoc <rolepath>
```

You can even use it programatically from sphinx. Check it out.