#!/bin/bash

# It takes 3 exactly parameters (e.g.: ./startup.sh IP Username Password) #

echo "Kill HLA Server (rtig) & SynchServer in following account:"
echo "IP : $1"
echo "Username : $2"
echo "Password : $3"

export SSHPASS=$3

sshpass -e ssh $2@$1 '(nohup killall -v rtig > cmd_rtig.out 2> cmd_rtig.out.err < /dev/null &)'
sshpass -e ssh $2@$1 '(nohup killall -v SynchServer > cmd_synchServer.out 2> cmd_synchServer.err < /dev/null &)'
