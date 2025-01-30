FROM caddy:builder-alpine AS builder

RUN xcaddy build \
#    --with github.com/caddyserver/nginx-adapter \
    --with github.com/caddy-dns/ovh

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
