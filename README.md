# gitops-test-repo
Just some YAML files for test syncing

Run `./bootstrap.sh minikube` to deploy ArgoCD and a few applications.

The intention of this repo is to come up with a folder structure which allows for

- dev/prod defaults for each helm chart
- overrides at cluster level