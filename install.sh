sudo apt-get install build-essential lm-sensors hddtemp aptitude screen yum mysql-server apache2 php5 php5-dev php5-memcached libicu52 libopts25 libpq5 ntp php-xml-parser php5-intl php5-pgsql php5-apcu php5-mysql php5-mcrypt php5-xmlrpc php5-gd php5-geoip php5-imagick php5-sqlite php5-oauth php5-json php5-curl php5-imap php5-cli htop mtools ncdu pydf p7zip-full p7zip-rar rar unrar zip p7zip mc mcrypt iftop ifetch-tools unzip unace arj cabextract gzip curl python libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext abiword python-software-properties git git-core svnkit csvtool nodejs npm fail2ban apache2-utils phpmyadmin davfs2 imagemagick poppler-utils ghostscript sed libcairo2-dev
sudo dpkg-reconfigure davfs2
sudo cp -p /etc/phpmyadmin/apache.conf /etc/phpmyadmin/apache.conf.orig.`date +%F`
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade
sudo a2enmod rewrite && sudo php5enmod mcrypt
sudo service apache2 restart
sudo mkdir /etc/apache2/ssl/
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt
sudo a2enmod ssl && sudo a2ensite default-ssl
sudo service apache2 reload
sudo service apache2 restart
wget http://download.opensuse.org/repositories/isv:ownCloud:community/xUbuntu_14.04/Release.key
sudo apt-key add - < Release.key
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud.list"
sudo apt-get update
sudo apt-get install owncloud
sudo cp -p /etc/apache2/conf.d/owncloud.conf /etc/apache2/conf.d/owncloud.conf.orig.`date +%F`
sudo mv /etc/apache2/conf.d/owncloud.conf /etc/apache2/sites-enabled
sudo sh -c "echo 'Alias /owncloud /var/www/owncloud/ \n <Directory /var/www/owncloud/> \n  AllowOverride All \n </Directory> ' >> /etc/apache2/conf-available/owncloud.conf"
sudo a2ensite owncloud
wget etherpad.org/downloads/etherpad-1.4.deb -O etherpad-1.4.deb && sudo dpkg -i etherpad-1.4.deb
sudo npm install ep_headings ep_font_color ep_font_family ep_font_size ep_superscript ep_subscript ep_page_view ep_print ep_page_ruler ep_line_height ep_aa_file_menu_toolbar ep_set_title_on_pad ep_markdown ep_real_time_chat ep_previewimages ep_copy_paste_images ep_align ep_stats ep_text_to_speech ep_font_family ep_font_size ep_offline_edit ep_font_color ep_rewrite_share_paths ep_email_notifications ep_visual_slider ep_rss ep_slideshow ep_imageconvert ep_desktop_notifications ep_draw ep_add_buttons ep_author_hover ep_fileupload ep_metrics ep_list_pads ep_webrtc ep_clear_formatting ep_sticky_attributes ep_special_characters ep_define ep_headings
cd $HOME
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
git config
git config --global user.name "elitelinux"
git config --global user.email "elite.linux@gmail.com"
git config --list
cd deb/
mv *.deb /var/cache/apt/archives/
sudo mv *.deb /var/cache/apt/archives/
