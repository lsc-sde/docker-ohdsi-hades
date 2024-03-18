FROM ohdsi/broadsea-hades:4.2.1
MAINTAINER "Shaun Turner<shaun.turner1@nhs.net>"
LABEL org.opencontainers.image.title="LSCSDE-OHDSI-Broadsea-Hades"
LABEL org.opencontainers.image.authors="Shaun Turner<shaun.turner1@nhs.net>"
LABEL org.opencontainers.image.description="HADES (formally known as the OHDSI Methods Library) is a set of open source R packages for large scale analytics, including population characterization, population-level causal effect estimation, and patient-level prediction."
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.vendor="LSCSDE"
LABEL org.opencontainers.image.source="https://github.com/lsc-sde/docker-ohdsi-hades"

ENV SECURITY_OID_ENABLED=""
ENV SECURITY_OID_ISSUER=""
ENV SECURITY_OID_CLIENTID=""
ENV SECURITY_OID_APISECRET=""

COPY --chmod=0777 ./launch-hades.sh /usr/local/bin/launch-hades.sh
CMD [ "/usr/local/bin/launch-hades.sh" ]