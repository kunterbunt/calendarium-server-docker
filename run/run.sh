#!/bin/bash
cd /mnt/go/src/github.com/kunterbunt/calendarium-server
if git rev-parse --git-dir > /dev/null 2>&1; then
  echo -n "Git repo exists -> updating -> "; git pull
else
  echo -n "Git repo doesn't exist -> cloning -> "; git clone https://github.com/kunterbunt/calendarium-shop.git .
fi
go build -o calendarium-server . 
./calendarium-server /mnt/db/calendarium.sqlite3 $BILLBEE_API_KEY $BILLBEE_API_USERNAME $BILLBEE_API_PASSWORD $BILLBEE_API_URL $SHOP_AUTH_USERNAME $SHOP_AUTH_PASSWORD $SHOP_FORWARD_TO_BILLBEE $SHOP_ERR_EMAIL_FROM $SHOP_ERR_EMAIL_TO_FIRST $SHOP_ERR_EMAIL_TO_SECOND $SHOP_ERR_EMAIL_PASSWORD $SHOP_ERR_EMAIL_SMTP_HOST $SHOP_ERR_EMAIL_SMTP_PORT
