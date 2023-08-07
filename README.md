# ssh-tunnel using docker

When you have something you want to connect beyond the firewall, you can use this Docker image to establish a connection. The usage is very simple.

## Simple usage for database connection
```sh
docker run \
  --rm \
  -p 3306:3306 \
  -v $HOME/.ssh:/ssh \
  -e TUNNEL_HOST=example.com \
  -e LOCAL_PORT=3306 \
  -e REMOTE_HOST=localhost \
  -e REMOTE_PORT=3306 \
  solo5star/ssh-tunnel
```

Your `~/.ssh/config` file should be:
```
Host example.com
  HostName example.com
  User solo5star
  IdentityFile ~/.ssh/example.pem
```
