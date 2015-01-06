# cloud66-deploy

This triggers a Cloud66 stack redeployment for the current `WERCKER_GIT_COMMIT`.

# Options

* `stack-id` (required) The stack UID.
* `token` (required) The personal access token.

# Example

``` yaml
deploy:
  steps:
    - cloud66-deploy:
        stack-id: $STACK_ID
        token: $TOKEN
```

# License

The MIT License (MIT)

# Changelog

## 0.1.0

- Initial release
