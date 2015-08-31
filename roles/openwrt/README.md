Role Name
=========

A role to configure openwrt. It works using a custom shell module to avoid requiring python on the target.
This is greatly inspired from the work of lefant. I gathered all his work on a single module
wich i slightly modified.

See https://github.com/lefant/ansible-openwrt or ansible-openwrt on ansible-galaxy

Requirements
------------

All you need is a ssh acces to your target openwrt system.

Role Variables
--------------

defaults:

example:

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

No dependencies.

Example Playbook
----------------

- hosts: gw
  remote_user: root
  gather_facts: no
  roles:
    - role: openwrt

License
-------

BSD

Author Information
------------------

tbc: An optional section for the role authors to include contact information, or a website (HTML is not allowed).

