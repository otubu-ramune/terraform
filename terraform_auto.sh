#!/usr/bin/bash
COUNT=1
terraform apply -auto-approve
while [ $? -eq 1 ]
do
  echo try $COUNT
  sleep 10
  COUNT=$((COUNT+1))
  echo tera start
  terraform apply -auto-approve
done
echo Resource Created! >> result.txt
