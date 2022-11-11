FROM alpine

RUN mkdir -p /etc/pki/tls/certs
RUN apk add wget
RUN wget http://curl.haxx.se/ca/cacert.pem
RUN mv cacert.pem ca-bundle.crt
RUN mv ca-bundle.crt /etc/pki/tls/certs

RUN apk add --no-cache bash

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]
