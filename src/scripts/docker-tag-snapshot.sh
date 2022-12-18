#!/bin/bash

docker tag \
  "${CACHE_IMAGE:?}:${APP_VERSION:?}" \
  "$CACHE_IMAGE:snapshot"
