cd /var/www/
git clone https://github.com/elitelinux/hack-space.git
cd /var/www/hack-space/php
mv $HOME/hackspace.conf /etc/apache2/conf-available/hackspace.conf
sudo ln -s /etc/apache2/conf-available/hackspace.conf /etc/apache2/conf-enabled/hackspace.conf
