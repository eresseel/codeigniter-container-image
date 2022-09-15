#!/bin/bash

echo -e "\e[1;33m Run test...\e[0m"

if [ -f "/app/spark" ]; then
  echo -e "\e[1;32m The 'spark' command is exists.\e[0m"
else
  echo -e "\e[1;31m Error: The 'spark' command not found. Test is failed.\e[0m"
  exit 1
fi