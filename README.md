GHA-HELM3
=========

Simple action with helm3 client binary

## Example usage
```
uses: cflynn07/gha-helm3@master
run: |
    upgrade RELEASE_NAME \
      --install \
      --reuse-values \
      --debug \
      --set foo="bar" \
      ./helm-dir
```
