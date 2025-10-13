#! /bin/bash
if [ "$(sudo systemctl is-active httpd)" == "active" ]  ; then
        echo "Service is running"
else
        sudo systemctl start httpd
        sudo systemctl enable httpd
        echo "service is started and enabled"
fi
