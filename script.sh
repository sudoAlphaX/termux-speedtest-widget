#!/bin/bash

read raw

echo "Internet Speedtest"
echo
echo "Download speed: $(echo $raw | jq -r .servers[0].dl_speed) Mbps"
echo "Upload speed: $(echo $raw | jq -r .servers[0].ul_speed) Mbps"
echo
echo "Time of test: $(date '+%H:%M:%S %d/%m/%Y')"
echo
echo "ISP: $(echo $raw | jq -r .user_info.Isp)"
echo "Distance from test server: $(printf "%.2f\n" $(echo $raw | jq -r .servers[0].distance)) km"
