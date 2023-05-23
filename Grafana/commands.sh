#!/bin/bash

#Working command:
sudo docker rm grafana
sudo docker run -d -p 3000:3000 -u 1000:1000 --name=grafana -e "GF_INSTALL_PLUGINS=grafana-clock-panel" -v /home/grafana:/var/lib/grafana ubuntu/grafana
