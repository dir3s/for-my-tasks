#!/bin/bash

if [ -z "$JENKINS_AGENT_SECRET" ]; then
  echo "Error: JENKINS_AGENT_SECRET not set"
  exit 1
fi

echo "Starting Jenkins agent via WebSocket..."
exec java -jar /usr/share/jenkins/agent.jar \
  -url $JENKINS_URL \
  -name $JENKINS_AGENT_NAME \
  -secret $JENKINS_AGENT_SECRET \
  -workDir $JENKINS_AGENT_WORKDIR \
  -webSocket
