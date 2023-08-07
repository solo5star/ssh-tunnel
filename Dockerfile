FROM alpine

RUN apk add --no-cache --update openssh-client

RUN mkdir /ssh

COPY entrypoint.sh .

EXPOSE 1-65535

CMD "./entrypoint.sh"
