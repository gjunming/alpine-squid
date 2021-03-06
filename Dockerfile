FROM alpine:3.5

LABEL maintainer "Guan Jun-Ming(管俊明)<gjunming@gmail.com>"

ENV VERSION "3.5.23-r0"

RUN apk update && apk add squid=$VERSION

# expose default squid port
EXPOSE 3128/tcp

ADD squid.conf /etc/squid/squid.conf

# create cache dirs
RUN /usr/sbin/squid -N -f /etc/squid/squid.conf -z

# expose volumes to configure squid
VOLUME /etc/squid

# run squid
CMD ["/usr/sbin/squid", "-f", "/etc/squid/squid.conf", "-N", "-d", "7"]
