# gitops-test-repo
Just some YAML files for test syncing

Run `./bootstrap.sh minikube` to deploy ArgoCD and a few applications.

The intention of this repo is to come up with a folder structure which allows for

- dev/prod defaults for each helm chart
- overrides at cluster level

## Using ArgoCD CLI

See https://argo-cd.readthedocs.io/en/latest/cli_installation/ for installation instructions.

The default namespace needs to be `argocd` for the cli to work

```bash
kubectl config set-context --current --namespace=argocd
argocd app list
```
