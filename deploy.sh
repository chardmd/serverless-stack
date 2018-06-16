#!/bin/bash

echo "Test Deployment using Travis"
echo $TRAVIS_BRANCH
npm install -g serverless
sls deploy