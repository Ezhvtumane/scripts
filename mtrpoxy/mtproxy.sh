#!/bin/bash

docker run -d -p443:443 --restart=always --name=MTProxy443 -v proxy-config-443:/data -e SECRET="your secret" telegrammessenger/proxy:latest