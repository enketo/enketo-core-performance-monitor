#!/bin/sh -u

# exit if an error occurs
set -e

# install dependencies
apt update
apt install -y build-essential curl git

# node
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs

# remove node_modules if exists because npm builds can be system-specific
cd /vagrant
if [ -d "/vagrant/node_modules" ]; then
	rm -R /vagrant/node_modules
fi
npm install

# enketo-core
cd ..
git clone https://github.com/enketo/enketo-core.git
cd enketo-core
npm install
#mkdir temp
#chmod 777 temp
cd build
mkdir js 
mkdir css
chmod 777 js
chmod 777 css
cd ..
grunt

echo "**************************************************************************************"
echo "***               Enketo Core Performance monitor is installed!                   ****"
echo "**************************************************************************************"

