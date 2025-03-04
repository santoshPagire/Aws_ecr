#!/bin/bash

# Arguments passed from GitHub Actions
REGISTRY=$1
REPOSITORY=$2
IMAGE_TAG=$3

echo " ============Images Before Taging============ "
  docker images

# Tag according to ecr
docker tag my-local-image:latest $REGISTRY/$REPOSITORY:$IMAGE_TAG

echo " ============Images After Taging============ "
  docker images