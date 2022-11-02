#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2e0a71f0-7de8-4eb6-b51a-7e4e8cf4b327"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

