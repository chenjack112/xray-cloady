#!/bin/sh
set -e
apk add --no-cache curl unzip
curl -sL https://github.com/XTLS/Xray-core/releases/download/v26.10.21/Xray-linux-64.zip -o /tmp/x.zip
unzip -o /tmp/x.zip -d /tmp xray
echo "$XRAY_B64" | base64 -d > /tmp/config.json
exec /tmp/xray run -c /tmp/config.json
