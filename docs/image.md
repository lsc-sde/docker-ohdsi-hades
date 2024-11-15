---
title: Container Image
parent: Hades
layout: page
ancestor: OHDSI
---

This is a customised version of the OHDSI Hades image. This allows us to dynamically assign the OpenID provider settings via environmental variables.

## Inheritance
This container image inherits from the **ohdsi/broadsea-hades:4.2.1** image and configures it for use within the SDE.

## Environmental Variables

The following environmental variables are exposed by the docker image:

| Name | Purpose | Default |
| --- | --- | --- | 
| SECURITY_OID_ENABLED | Whether OpenID Provider is enabled | <empty> |
| SECURITY_OID_ISSUER | The issuer used by the OpenID Provider | <empty> |
| SECURITY_OID_CLIENTID | The client id used by the OpenID Provider | <empty> |
| SECURITY_OID_APISECRET | The client secret used by the OpenID Provider | <empty> |