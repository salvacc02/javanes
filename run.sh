#! /bin/bash

ansible-playbook /app/logs-sync.yml --extra-vars "namespace=${NAMESPACE} remote_drive=${REMOTE_DRIVE} smtp_server=${SMTP_SERVER} smtp_port=${SMTP_PORT} send_mail=${SEND_MAIL}"
