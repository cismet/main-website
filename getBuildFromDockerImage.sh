#!/bin/bash
docker run -t --rm -v $(pwd):/tmp cismet/main-website sh -c "cp -rv /usr/share/nginx/html/* /tmp"
