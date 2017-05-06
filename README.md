# Squid docker
> Dockerized squid proxy over alpine image, where squid version with 3.5

## Instalation

```sh
docker pull gjunming/alpine-squid
```

## Running

```sh
docker run -v /etc/squid/:/etc/squid/:ro -p 3128:3128 gjunming/alpine-squid
```

## Configuration
By default squid proxy reads the configuration file `/etc/squid3/squid.conf`
