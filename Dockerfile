# 0.11 is Ubuntu 18.04
# https://github.com/phusion/baseimage-docker
FROM phusion/baseimage:0.11

CMD ["/sbin/my_init"]


RUN apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold"

RUN apt-get install -y vim git sudo build-essential

RUN groupadd alex
RUN useradd -m -d /home/dev -g alex -G sudo -s /bin/bash dev


# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

