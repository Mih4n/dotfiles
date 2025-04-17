#!/usr/bin/env bash 

while true; do
  uptime | awk -F'( |,|)+' '{print $4}'
  sleep 30
done
