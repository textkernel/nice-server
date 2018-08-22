#!/usr/bin/env bash

set -e

docker run --rm -it --name certbot \
  --volume /srv/nice/acme-challenge:/srv/nice/acme-challenge \
  --volume /etc/letsencrypt:/etc/letsencrypt \
  certbot/certbot \
    certonly --webroot \
      -w /srv/nice/acme-challenge/ -d nice.textkernel.nl \
      --renew-by-default \
      --email antipin@textkernel.nl \
      --agree-tos \
      --manual-public-ip-logging-ok \
