FROM busybox:latest

LABEL "com.github.actions.name"="Cloudflare Workers quick route update"
LABEL "com.github.actions.description"="A Cloudflare worker action to change worker route between other steps"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="orange"

LABEL version="0.1.0"
LABEL repository="https://github.com/aakashlpin/cloudflare-worker-route-update"
LABEL homepage="https://aakashgoel.me/"
LABEL maintainer="Aakash Goel <me@aakashgoel.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
