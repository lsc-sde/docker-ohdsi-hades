#!/bin/bash

if [[ -n "${SECURITY_OID_ENABLED}" ]]; then
    echo "auth-openid=1" >> /etc/rstudio/rserver.conf
fi

if [[ -n "${SECURITY_OID_ISSUER}" ]]; then
    echo "auth-openid-issuer=${SECURITY_OID_ISSUER}" >> /etc/rstudio/rserver.conf
fi

if [[ -n "${SECURITY_OID_CLIENTID}" ]]; then
    echo "client-id=${SECURITY_OID_CLIENTID}" > /etc/rstudio/openid-client-secret
    echo "client-secret=${SECURITY_OID_APISECRET}" >> /etc/rstudio/openid-client-secret
    chmod 0600 /etc/rstudio/openid-client-secret
fi

echo "-- Executing supervisord with following configuration --"
cat /etc/rstudio/rserver.conf

# Pass over to supervisord
/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf