#!/bin/bash

echo "bash ./deploy.sh"
echo $TRAVIS_BRANCH
npm install -g serverless
if [$TRAVIS_BRANCH == 'dev']; then
    sls deploy
else
    sls deploy --stage production
fi