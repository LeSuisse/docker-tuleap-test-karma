FROM ubuntu

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt-get install -y git
RUN apt-get install -y libfontconfig

## Install base node modules
RUN npm install -g grunt-cli
RUN npm install -g bower

RUN ln -s /usr/bin/nodejs /usr/bin/node

ADD run.sh /run.sh

ENTRYPOINT ["/run.sh"]
VOLUME ["/tuleap"]
