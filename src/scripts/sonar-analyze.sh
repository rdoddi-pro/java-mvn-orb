#!/bin/bash

mvn "${MVN_OPTS:?}" verify sonar:sonar -Dsonar.projectKey="${PROJECT_KEY:?}" -Dsonar.login="${TOKEN:?}"
