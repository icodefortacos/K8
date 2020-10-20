#!/bin/sh
sudo echo "Retrieving available pods..."
sudo echo ""
sudo echo "Available pod instances:"
kubectl get pods -n production | grep '^meta'
sudo echo ""
sudo echo "Automatically accessing first available pod..."
sudo echo ""
kubectl exec -it -n production $(kubectl get pods -n production | grep '^meta' | head -n1 | cut -f1) -- bash -il
