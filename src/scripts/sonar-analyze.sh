#!/bin/bash

pwd
ls
find . -maxdepth 2 -type f
mvn "${MVN_OPTS:?}" verify sonar:sonar -Dsonar.projectKey="${PROJECT_KEY:?}" -Dsonar.login="${TOKEN:?}"
