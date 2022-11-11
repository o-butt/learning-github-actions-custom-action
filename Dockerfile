FROM alpine

RUN apk add --no-cache bash python3 py3-pip 

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]