FROM docker:stable

RUN apk --no-cache add openssh-client docker-compose

RUN apk add --no-cache aws-cli

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
