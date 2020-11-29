# network
contains the network

### getting started

### add and configure git

```bash
$ apt update
$ apt install git
```

```bash
git config --global user.name "your username"
git config --global user.email "username@example.com"
```

```bash
root@server:~/$ mkdir lowlandtech
root@server:~/$ cd lowlandtech
root@server:~/lowlandtech$ git clone https://github.com/lowlandtech/network
root@server:~/lowlandtech/network$ docker-compose up -d
```

### run all the containers

```bash
root@server:~/lowlandtech/network# docker-compose
  -f docker-compose.wordpress.yml \
  -f docker-compose.postgres.yml \
  -f docker-compose.mail.yml \
  -f docker-compose.mautic.yml \
  up -d
```