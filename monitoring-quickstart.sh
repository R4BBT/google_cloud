#!/bin/bash
curl -sSO "https://dl.google.com/cloudagents/add-monitoring-agent-repo.sh"
sudo bash add-monitoring-agent-repo.sh
sudo apt-get update
sudo apt-get install stackdriver-agent -y 
sudo service stackdriver-agent start

curl -sSO https://dl.google.com/cloudagents/add-logging-agent-repo.sh
sudo bash add-logging-agent-repo.sh
sudo apt-get update
sudo apt-get install google-fluentd -y 
sudo apt-get install google-fluentd-catch-all-config-structured -y 
sudo service google-fluentd start

sudo systemctl status stackdriver-agent
sudo systemctl status google-fluentd