FROM ubuntu:24.04

RUN apt update
RUN apt install apache2 -y
RUN date >/var/www/html/buildtime.txt

ENV DEBIAN_FRONTEND=noninteractive

COPY . /var/www/

CMD service apache2 start && bash
EXPOSE 80/tcp
