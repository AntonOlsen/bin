#!/bin/bash
# Created with info from here:
# https://josephscott.org/archives/2011/10/timing-details-with-curl/

cd $(dirname $0)

if [ "$1" == "" ] ; then
    echo "Usage: $0 <url>"
    exit
fi

curl -w "@httspeed.txt" -o /dev/null -s $1
