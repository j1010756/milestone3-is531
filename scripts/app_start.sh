#!/bin/bash
cd /home/ec2-user/milestone3-is531
export NVM_DIR="/home/ec2-user/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
pm2 start index.js
