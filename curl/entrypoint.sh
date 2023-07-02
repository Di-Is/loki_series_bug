#!/bin/sh

MAX_TIME=$1

# make csv column
TNow=`date +%s%N`
TNow=$TNow"000000000"

START=$(( TNow - ( 20 * 1000000000 * 60)))
END=$(( TNow - ( 15 * 1000000000 * 60 )))
# request series api
RES=`curl -s "http://test-loki-1:3100/loki/api/v1/series?start=$START&end=$END"`
echo "$RES"
