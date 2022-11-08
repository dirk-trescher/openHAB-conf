Your scripts go here.
All script files have to have the ".script" file extension and must follow a special syntax.

Check out the openHAB documentation for more details:
http://docs.openhab.org/features/automation/ruledsl.html#scripts





Create openssh key pair:
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -t rsa -f id_rsa
cd ..
chown -R openhabian:openhabian .ssh ; chmod 700 .ssh
Import the public key (id_rsa.pub) into /var/lib/openhab/etc/keys.properties like
openhab=AAAAB3NzaC1kc3M...XWKpeyW789IBpcZfyYQ=,_g_:admingroup
Be aware that the leading “ssh-key” and trailing “user@server” has to be omitted.

A login to the console should work now with
ssh -i /var/lib/openhab/.ssh/id_rsa openhab@127.0.0.1 -p 8101
The excution of a karaf command should work with
ssh -i /var/lib/openhab/.ssh/id_rsa openhab@127.0.0.1 -p 8101 bundle:restart 209
