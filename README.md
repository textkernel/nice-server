# nice-server


## Renew SSL certificate

1. `ssh` into nice.textkernel.nl machine
2. Go to `/srv/nice/nice-server`
3. Run `sh ./etc/certbot/renew.sh`
4. Rebuild docker containers `docker-compose down --volumes && docker-compose up --build -d`

[x] add this command to crontab
