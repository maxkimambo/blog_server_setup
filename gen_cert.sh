#!/bin/bash
docker run --rm -it -v "$(pwd)/certs/log:/var/log/letsencrypt" -v "/data/server/well-known:/var/www/" -v "$(pwd)/certs:/etc/letsencrypt" -v "$(pwd)/certs/lib:/var/lib/letsencrypt" lojzik/letsencrypt certonly --webroot --webroot-path /var/www --email max@kimambo.de -d www.kimambo.de