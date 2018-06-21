#!/bin/sh
# https://github.com/bitly/oauth2_proxy/blob/v2.2/README.md
if [ -z "$OAUTH2_PROXY_COOKIE_SECRET" ]; then
  export OAUTH2_PROXY_COOKIE_SECRET=`dd if=/dev/urandom count=1 bs=48 2>/dev/null | base64`
fi
exec oauth2_proxy --http-address=http://:4180 "$@"
