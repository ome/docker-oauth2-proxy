![Actions Status](https://github.com/ome/docker-oauth-proxy/workflows/Build/badge.svg)](https://github.com/ome/docker-oauth-proxy/actions)

# OAuth2 Proxy Docker image

https://github.com/bitly/oauth2_proxy

GitHub example (testing only, you should enable TLS in production):

    docker run --rm -p 4180:4180 \
        -e OAUTH2_PROXY_CLIENT_ID=GITHUB_CLIENT_ID \
        -e OAUTH2_PROXY_CLIENT_SECRET=GITHUB_SECRET \
        oauth2-proxy \
        --provider=github \
        --github-org=openmicroscopy \
        --github-team=devops \
        --email-domain=* \
        --cookie-secure=false \
        --upstream=file:///
