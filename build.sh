#!/bin/bash
docker rmi harvarditsecurity/misp
docker build \
    --rm=true --force-rm=true \
    --build-arg MYSQL_MISP_PASSWORD=JBao5Q2bps89LWFqWkKgDZwAFpNHvc \
    --build-arg POSTFIX_RELAY_HOST=localhost \
    --build-arg MISP_FQDN=localhost \
    --build-arg MISP_EMAIL=tuongvm@funtap.vn \
    --build-arg MISP_GPG_PASSWORD=JBao5Q2bps89LWFqWkKgDZwAFpNHvc \
    -t harvarditsecurity/misp container

