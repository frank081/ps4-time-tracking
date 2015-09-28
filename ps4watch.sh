#!/bin/sh
json=`ps4wake -P -B -j`;
timestamp=`echo $json | jq .timestamp`
dateCheck=`python -c "from time import gmtime, strftime; print (strftime('%Y-%m-%dT%H:%M+0000',gmtime()))"`
echo "$dateCheck,$(echo $json | jq .running_app_name),$(echo $json | jq .running_app_titleid)" >> ~/log/ps4watch.log
