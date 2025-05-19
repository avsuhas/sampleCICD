#!/bin/bash

echo "Received push, deploying latest image..."

kubectl rollout restart deployment myapp-deployment

webhook -hooks hooks.json -port 9000
