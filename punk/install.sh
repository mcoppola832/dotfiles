# P'unk specific open A2 / node.js / PHP development stuff
brew install node mongo mysql imagemagick netpbm
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

sudo touch /etc/php.ini
subl /etc/php.ini

# Paste in:

# mysql.default_socket = /tmp/mysql.sock
# pdo_mysql.default_socket = /tmp/mysql.sock

# date.timezone = America/New_York

# (You need the "touch" command because sublimetext seems unable to make a new file owned by root.)

# * Apache: we'll configure the version that comes with MacOS.

# Edit: /etc/apache2/httpd.conf

# Now run:

# sudo apachectl start

# If it doesn't work, check /var/log/apache2/error_log. After making adjustments run:

# sudo apachectl restart

# * Build and load the database from fixtures in your checkout of the A1.5 sandbox:

# ./symfony doctrine:build --all --and-load

