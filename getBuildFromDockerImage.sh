#!/bin/bash
docker run -t --rm -v $(pwd):/tmp cismet/main-website:v23.02.1 sh -c "cp -rv /usr/share/nginx/html/* /tmp"
