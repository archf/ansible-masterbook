#!/bin/sh

# guess package manager
echo 'guessing package manager...'
echo

if [ -x $(which apt-get) ]; then
  PKG_MANAGER=$(which apt-get)
elif [[ -x $(which dnf) ]]; then
  PKG_MANAGER=$(which dnf)
fi

echo "found ${PKG_MANAGER} !"
echo

if [ -x "$(which git)" ]; then
  echo Git is already installed.
  echo
else
  echo Git is not installed. Installing...
  sudo $PKG_MANAGER install -y git
fi

if [ -x "$(which ansible)" ] ; then
  echo Ansible is already installed.
  echo
else
  echo Ansible is not installed. Installing...

  # install from ppa on ubuntu
  if [ $(hostnamectl  | grep -o "Ubuntu")  = "Ubuntu" ]; then
    sudo apt-get install software-properties-common
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install ansible
  else
    # install with package manager
    sudo $PKG_MANAGER install -y ansible
  fi
fi
echo '...all done'
