#!/bin/sh

rm -rf ~/.ssh
mkdir /ssh 2> /dev/null
cp -R /ssh ~/.ssh

chmod 700 ~/.ssh
chmod 600 ~/.ssh/*

echo TUNNEL_HOST=$TUNNEL_HOST
echo REMOTE_HOST=$REMOTE_HOST
echo REMOTE_PORT=$REMOTE_PORT
echo LOCAL_PORT=$LOCAL_PORT

exec ssh -t -t \
  -o StrictHostKeyChecking=no \
  -L *:$LOCAL_PORT:$REMOTE_HOST:$REMOTE_PORT \
  $TUNNEL_HOST \
  1> /dev/null
