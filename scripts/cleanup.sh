#!/bin/bash

# Remove all deployed resources from OpenShift
echo "Cleaning up OpenShift resources..."
oc delete all --all -n bookstore-project

# Clean up local podman images to save disk space
echo "Cleaning up local Podman images..."
podman image prune -f

echo "Environment is clean!"
