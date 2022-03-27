#bin/bash

echo "START"
V0=`git rev-parse HEAD`

while true
do 
  echo "numstat till now"
  echo  `git diff --numstat $V0`
  V0=`git rev-parse HEAD`
  sleep 10
done

