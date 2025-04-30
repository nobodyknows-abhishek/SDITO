# SDITO
cd var/www/
sudo chmod 777 html

#!/bin/bash
apt-get update
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx
apt-get install -y git
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
apt-get install -y nodejs
git clone YourRepositoryURLhere
cd YourRepositoryNamehere/
npm install
node index.js

cd /etc/nginx/sites-available/
sudo nano default
proxy_pass http://localhost:4000;
 proxy_http_version 1.1;
 proxy_set_header Upgrade $http_upgrade;
 proxy_set_header Connection 'Upgrade'; 
 proxy_set_header Host $host;
 proxy_cache_bypass $http_upgrade;
 sudo systemctl restart nginx
