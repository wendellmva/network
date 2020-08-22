# network
contains the network

```bash
docker-compose -f docker-compose.yml \
  -f docker-compose.wordpress.yml \
  -f docker-compose.postgres.yml \
  -f docker-compose.mail.yml \
  -f docker-compose.mautic.yml \
  up -d
```
## run mail and mautic

```bash
$ docker-compose -f docker-compose.mautic.yml -f docker-compose.mail.yml up -d
```
