sudo apt-get update 
sudo apt-get install libcairo2-dev libjpeg8-dev libpango1.0-dev libgif-dev build-essential g++
sudo apt-get install ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1
sudo apt-get install zlib1g-dev libxml2-dev rake libxslt1-dev libsqlite3-dev libmysqlclient-dev libhttpclient-ruby imagemagick libxmlsec1-dev postgresql python-software-properties
sudo apt-get install nodejs
cd /usr/local
sudo apt-get install git-core
git clone https://github.com/instructure/canvas-lms.git canvas
cd canvas
git checkout --track -b stable origin/stable

