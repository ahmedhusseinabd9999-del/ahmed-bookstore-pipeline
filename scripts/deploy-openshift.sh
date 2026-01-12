#!/bin/bash

# Apply the namespace first
echo "Creating Namespace..."
oc apply -f openshift/base/namespace.yaml

# Apply all resources using Kustomize
echo "Deploying all manifests from base..."
oc apply -k openshift/base/

# Check deployment status
echo "Waiting for pods to stabilize..."
sleep 5
oc get pods -n bookstore-project
