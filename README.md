GHA-HELM3
=========

Simple action with helm3 client binary

Currently (Jan 13, 2020) the hosted Github Actions Ubuntu runner only has helm v2 installed. This action will become redundant once the runner image is updated with Helm v3.

https://help.github.com/en/actions/automating-your-workflow-with-github-actions/software-installed-on-github-hosted-runners

https://github.com/actions/virtual-environments/issues/108

## Example usage
```
uses: cflynn07/gha-helm3@master
with: 
  args: |
    upgrade RELEASE_NAME \
      --install \
      --reuse-values \
      --debug \
      --set foo="bar" \
      ./helm-dir
```
