FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y nodejs npm git libfontconfig rpm

## Install base node modules
RUN npm install -g grunt-cli bower less recess bless

RUN ln -s /usr/bin/nodejs /usr/bin/node

ADD run.sh /run.sh

ENTRYPOINT ["/run.sh"]
VOLUME ["/tuleap"]
