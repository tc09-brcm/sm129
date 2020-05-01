#!/bin/bash
. ./env.shlib
openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout ${SPSKEYFILE}  -out ${SPSCERTFILE} -subj "/CN=*.${SPSDOMAIN}/O=*.${SPSDOMAIN}"
mkdir -p "accessgateway/access-gateway/overlay/SSL/keys/"
mv "${SPSKEYFILE}" "accessgateway/access-gateway/overlay/SSL/keys/"
mkdir -p "accessgateway/access-gateway/overlay/SSL/certs/"
mv "${SPSCERTFILE}" "accessgateway/access-gateway/overlay/SSL/certs/"
