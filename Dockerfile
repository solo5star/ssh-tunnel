FROM alpine

RUN apk add --no-cache openssh

COPY entrypoint.sh .

CMD "./entrypoint.sh"
