#!/usr/bin/bash
COUNT=1
echo error $?
terraform apply -auto-approve
while [ $? -eq 1 ]
do
  echo error $?
  echo try $COUNT
  sleep 10
  COUNT=$((COUNT+1))
  echo tera start
  terraform apply -auto-approve
done
echo don-e
echo Resource Created! >> result.txt
