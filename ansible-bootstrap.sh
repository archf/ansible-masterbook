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

if [ -x $(which git) ]; then
  echo Git is already installed.
else
  echo Git is not installed. Installing...
  sudo $PKG_MANAGER install -y git
fi

if [ -x $(which ansible) ] ; then
  echo Ansible is already installed.
else
  echo Ansible is not installed. Installing...
  sudo $PKG_MANAGER install -y ansible
fi

echo '...all done'
