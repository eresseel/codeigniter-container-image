#!/bin/bash

while true; do
    docker logs test-codeignier | grep "CodeIgniter development server started"
    if [ $? -eq 1 ]; then 
        echo "Wait to start"
        sleep 1
    else 
        break
    fi
done