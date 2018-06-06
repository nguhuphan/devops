#!/bin/sh
# Read mounted files
KUBE_TOKEN=$(</var/run/secrets/kubernetes.io/serviceaccount/token)
NAMESPACE=$(</var/run/secrets/kubernetes.io/serviceaccount/namespace)
RESOURCE=secrets
curl -sSk -H "Authorization: Bearer $KUBE_TOKEN" https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_PORT_443_TCP_PORT/api/v1/namespaces/$NAMESPACE/$RESOURCE