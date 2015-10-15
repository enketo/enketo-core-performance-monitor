#!/bin/sh -u

# exit if an error occurs
set -e

# install dependencies
apt-get update
apt-get install -y build-essential curl git

# phantomjs 1.9.8
apt-get install -y build-essential chrpath libssl-dev libxft-dev
apt-get install -y libfreetype6 libfreetype6-dev
apt-get install -y libfontconfig1 libfontconfig1-dev
cd ~
export PHANTOM_JS="phantomjs-1.9.8-linux-x86_64"
wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
tar xvjf $PHANTOM_JS.tar.bz2
mv $PHANTOM_JS /usr/local/share
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin

#check
echo "**** PhantomJS installation check: ****"
phantomjs --version

# node

curl -sL https://deb.nodesource.com/setup_0.10 | sudo bash -
apt-get install -y nodejs

npm -g install grunt-cli
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
mkdir temp
chmod 777 temp
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

