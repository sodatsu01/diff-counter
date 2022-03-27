#! /bin/bash

if [ -z $SPRIT_COMMIT_HASH ]; then
  echo "REGIST START COMMIT HASH"
  export SPRIT_COMMIT_HASH=`git rev-parse HEAD`
  echo $SPRIT_COMMIT_HASH
else
  echo "git diff --stat from last runnig on"
  echo `git add -N . && git diff --stat $SPRIT_COMMIT_HASH`
  export SPRIT_COMMIT_HASH=`git rev-parse HEAD`
fi

# test
