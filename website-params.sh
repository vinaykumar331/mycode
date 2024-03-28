#!/bin/bash
WEBSITES=$@
echo $*
for WEBSITE in $WEBSITES
do
echo "lets ping $WEBSITE"
ping -c 3 $WEBSITE
done
echo "you have provided $# parameters"
