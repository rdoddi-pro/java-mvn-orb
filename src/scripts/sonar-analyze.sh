#!/bin/bash

mvn --version
echo mvn "${MVN_OPTS}" verify sonar:sonar -Dsonar.projectKey="${PROJECT_KEY:?}" -Dsonar.login="${TOKEN:?}"
mvn "${MVN_OPTS}" clean install
