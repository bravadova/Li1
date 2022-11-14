#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6af26a55-3c76-491c-974d-4c3d73653cf2"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

