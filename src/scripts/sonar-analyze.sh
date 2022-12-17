#!/bin/bash

mvn verify sonar:sonar -Dsonar.projectKey="${PROJECT_KEY:?}" -Dsonar.login="${TOKEN:?}"
