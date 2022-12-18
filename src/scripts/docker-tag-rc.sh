#!/bin/bash

# debug
npm --version

VERSION=$(npm -s run app:version)

docker tag \
  ${CACHE_IMAGE:?}:${APP_VERSION:?} \
  $CACHE_IMAGE:rc
