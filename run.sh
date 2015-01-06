if [ ! -n "$WERCKER_CLOUD66_DEPLOY_STACK_ID" ]; then
  error 'Please specify stack-id property'
  exit 1
fi

if [ ! -n "$WERCKER_CLOUD66_DEPLOY_TOKEN" ]; then
  error 'Please specify token property'
  exit 1
fi

curl -X POST "https://app.cloud66.com/api/3/stacks/$WERCKER_CLOUD66_DEPLOY_STACK_ID/deployments" -H "Authorization: Bearer $WERCKER_CLOUD66_DEPLOY_TOKEN" -d git_ref=$WERCKER_GIT_COMMIT
