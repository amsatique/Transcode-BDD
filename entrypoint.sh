#!/bin/bash
set -e

#Pushbullet notifications
echo "Container succefully redeployed : ${TUTUM_NODE_HOSTNAME} - ${TUTUM_SERVICE_HOSTNAME} - ${TUTUM_CONTAINER_HOSTNAME}" >> /var/log/messages
/pushbullet.sh

exec "$@"
