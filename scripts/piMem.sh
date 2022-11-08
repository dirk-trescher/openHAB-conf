#!/bin/bash

mem=`free | grep Mem: | awk '{print $3}'`
total=`free | grep Mem: | awk '{print $2}'`
echo $[$[100*$mem]/$total]
