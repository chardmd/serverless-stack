if [[ $TRAVIS_BRANCH == 'dev' ]]; then
  # Staging env variables
  npm install -g serverless
  sls deploy
elif [[ $TRAVIS_BRANCH == 'master' ]]; then
  # Prod env variables
  npm install -g serverless
  sls deploy --stage production
else
  exit 0
fi