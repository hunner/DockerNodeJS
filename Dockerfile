# DOCKER-VERSION 0.3.4

FROM ubuntu:12.04

RUN sudo apt-get -y update
RUN sudo apt-get install -y software-properties-common
RUN sudo apt-get install -y python-software-properties python g++ make
RUN sudo add-apt-repository -y ppa:chris-lea/node.js
RUN sudo apt-get -y update
RUN sudo apt-get install -y nodejs

ADD . /

RUN cd /src; /usr/bin/npm install
EXPOSE 8080
CMD ["node", "/src/server.js"]
