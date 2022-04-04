#!/bin/sh
docker run --cap-add=NET_ADMIN --device=/dev/net/tun --name fork1 --env-file .env fork