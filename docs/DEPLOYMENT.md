# Deployment Guide

## Prerequisites
- **OpenShift CLI (oc)**: Logged into the cluster.
- **Podman**: For local image building.

## Steps
1. **Build Images**: Run `./scripts/build-images.sh` to build backend, frontend, and db.
2. **Environment Setup**: Run `./scripts/deploy-openshift.sh` to create the namespace and resources.
3. **Verification**: Check pod status using `oc get pods`.
