# DOCKER-VERSION 0.3.4

FROM ubuntu:12.04

RUN apt-get -y update
RUN apt-get install -y software-properties-common
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get -y update
RUN apt-get install -y nodejs

ADD . /

RUN cd /src; /usr/bin/npm install
EXPOSE 8080
CMD ["node", "/src/server.js"]
