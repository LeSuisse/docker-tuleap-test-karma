FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt-get install -y git
RUN apt-get install -y libfontconfig
RUN apt-get install -y rpm

## Install base node modules
RUN npm install -g grunt-cli
RUN npm install -g bower
RUN npm install -g less
RUN npm install -g recess

RUN ln -s /usr/bin/nodejs /usr/bin/node

ADD run.sh /run.sh

ENTRYPOINT ["/run.sh"]
VOLUME ["/tuleap"]
