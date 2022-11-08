#!/bin/sh

if tail -50 /var/log/openhab/openhab.log | grep -q "Error while executing background thread FritzboxTr064 Refresh Service"
then
  echo 1
else
  echo 0
fi
