#!/bin/bash

echo ${NEXUS_RM_PASSWORD:?} | docker login -u ${NEXUS_RM_USERNAME:?} --password-stdin ${INDEX_URL:?}
