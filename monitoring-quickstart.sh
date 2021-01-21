#!/bin/bash
sudo curl -sSO https://dl.google.com/cloudagents/{add-logging-agent-repo.sh, add-monitoring-agent-repo.sh}
sudo bash add-logging-agent-repo.sh add-monitoring-agent-repo.sh
sudo apt-get update
sudo apt-get install stackdriver-agent google-fluentd google-fluentd-catch-all-config-structured apache2 php7.0 -y
sudo systemctl start google-fluentd stackdriver-agent 

