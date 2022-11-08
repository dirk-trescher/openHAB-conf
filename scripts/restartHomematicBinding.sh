#!/bin/sh

HomematicBundle=`sudo -u openhabian /usr/bin/ssh openhab@localhost -p 8101 -i /home/openhabian/.ssh/id_rsa bundle:list | grep "Homematic" | cut -b1-3`

sudo -u openhabian /usr/bin/ssh openhab@localhost -p 8101 -i /home/openhabian/.ssh/id_rsa bundle:restart $HomematicBundle
