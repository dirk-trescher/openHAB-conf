#!/bin/bash

top -b -n2 -p 1 | fgrep "Cpu(s)" | tail -1  | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}'
