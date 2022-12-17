#!/bin/bash

mvn install verify sonar:sonar -Dsonar.projectKey="${PROJECT_KEY:?}" -Dsonar.login="${TOKEN:?}"
