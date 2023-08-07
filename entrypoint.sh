#!/bin/sh

touch ~/.ssh/known_hosts
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*
chmod u+w ~/.ssh/known_hosts

echo TUNNEL_HOST=$TUNNEL_HOST
echo REMOTE_HOST=$REMOTE_HOST
echo REMOTE_PORT=$REMOTE_PORT
echo LOCAL_PORT=$LOCAL_PORT

exec ssh -t -t -L *:$LOCAL_PORT:$REMOTE_HOST:$REMOTE_PORT $TUNNEL_HOST 1> /dev/null
