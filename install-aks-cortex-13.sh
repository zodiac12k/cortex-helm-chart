#!/bin/bash

helm install cortex . \
-f values-control-stg-13.yaml \
--namespace monitoring \
--set ingress.annotations."kubernetes\.io/ingress\.class"=public-nginx \
--set ingress.hosts[0].host=cortex.skt.cloudzcp.com \
--set ingress.tls[0].secretName=skt-cloudzcp-com-cert \
--set ingress.tls[0].hosts[0]=cortex.skt.cloudzcp.com \
--set config.blocks_storage.azure.account_name=stcontrolstg \
--set config.blocks_storage.azure.account_key=pRVJvoJsOs1H3uP0GXInORORBnu/sPH0SZQzIabnqCcYCQI5h7lkMtYJbtsy4ddCy4WznA8JPzwmEiYRMOve8Q== \
--set config.blocks_storage.azure.container_name=cortex \
--set gateway.jwt_secret=a55e0a3366a8d792799a80d6c725bc2c6285b74cff1af8370624333faccc022220933833484770a1b712e7e4fb4c68e37ce0b1f9b4c31e1d14cb7fed7a8e0f86 \
