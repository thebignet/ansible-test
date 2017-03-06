Tests Ansible
=========

Set proxy settings in proxy.sh

  sudo su -
  cd /vagrant
  ./proxy.sh
  ./setup.sh
  ansible-playbook -i tests/inventory tests/test.yml


