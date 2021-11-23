#!/usr/bin/bash
#reference:  https://zenn.dev/kotapon/articles/02e245a1655360
COUNT=1
terraform apply -auto-approve
while [ $? -eq 1 ]
do
  echo try $COUNT
  sleep 60
  COUNT=$((COUNT+1))
  echo tera start
  terraform apply -auto-approve
done
echo Resource Created! >> result.txt
