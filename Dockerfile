FROM alpine:3.3

RUN echo '@testing http://dl-4.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories

RUN apk add --no-cache bash nodejs git rpm@testing

## Install base node modules
RUN npm install -g grunt-cli bower less recess bless

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
VOLUME ["/tuleap"]
