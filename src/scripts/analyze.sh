#!/bin/bash
# Author: Ramesh Doddi

# print env for debugging and audit confirmation
mvn --version

# Note: Following is the best way to manage -s setting
# refer to https://stackoverflow.com/questions/74837549/circleci-cannot-find-maven-settings-when-supplied-on-cli
if [ -n "${MVN_SETTINGS_FILE}" ]; then
  mvn -s "${MVN_SETTINGS_FILE}" verify sonar:sonar -Dsonar.projectKey="${SONAR_PROJECT_KEY:?}" -Dsonar.login="${SONAR_TOKEN:?}"
else
  mvn verify sonar:sonar -Dsonar.projectKey="${SONAR_PROJECT_KEY:?}" -Dsonar.login="${SONAR_TOKEN:?}"
fi
