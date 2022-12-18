#!/bin/bash

# param allows to use dockerfile from different path
DOCKER_FILE="Dockerfile"

docker build -f ${DOCKER_FILE:?} \
  --cache-from ${CACHE_IMAGE:?}:${APP_VERSION:?} \
  --tag ${CACHE_IMAGE:?}:$APP_VERSION \
  --build-arg BUILDKIT_INLINE_CACHE=1 \
  "."
