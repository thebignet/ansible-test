SSH Role
=========

[![Build Status](https://travis-ci.org/mbreisch/ssh-role.svg?branch=master)](https://travis-ci.org/mbreisch/ssh-role)

Hardens the ssh daemon and optionally installs mosh.

Requirements
------------

It is recommended to set up a non-root account with passwordless authentication before running this. If you do not
heed this warning, you may get locked out of your server. You can run mbreisch.deploy-user-role to do this.

Role Variables
--------------

Defaults:
* ssh_port: 1022
* ssh_install_mosh: yes
* ssh_mosh_from_port: 60000
* ssh_mosh_to_port: 60010

Dependencies
------------

There are no dependencies. However, if using ufw or any firewall you will need to create rules for ssh and/or mosh.
You can use mbreisch.ufw-role to add port rules.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
