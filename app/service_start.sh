#!/bin/bash
serv=docker
sstat=Stopped
sudo service docker status | grep -i 'running\|stopped' | awk '{print $6}' | while read output;
do
echo $output
if [ "$output" == "$sstat" ]; then
    sudo service $serv start
        sudo docker run -dit -p 80:80 nginx:alpine
        echo "$serv service is startting now"
    else 
    echo "$serv service is running"
	
    fi
done

ps -ef | grep docker | grep 80
[ $?  -eq "0" ] && echo "process is running" || echo "process started now";sudo docker run -dit -p 80:80 nginx:alpine
