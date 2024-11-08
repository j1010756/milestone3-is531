#!/bin/bash
cd /home/ec2-user/app
export NVM_DIR="/home/ec2-user/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
pm2 start index.js
pm2 startup
sudo env PATH=$PATH:/home/ec2-user/.nvm/versions/node/v16.16.0/bin pm2 startup systemd -u ec2-user --hp /home/ec2-user
pm2 save
