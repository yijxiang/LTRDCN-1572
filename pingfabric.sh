#!/bin/bash
fabric=( "198.18.4.101" "198.18.4.102" "198.18.4.103" "198.18.4.104" "198.18.4.201" "198.18.4.202")
while true;
do
  for f in "${fabric[@]}"; do
      ping -c 1 $f > /dev/null
      if [ $? -eq 0 ]; then
      echo "node $f is up"
      else
      echo "node $f is down"
      fi
  done
  sleep 60
done
