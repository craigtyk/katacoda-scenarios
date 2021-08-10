As you wait for the k8s cluster to start (1-2min) check out our official Helm repository:  https://helm.tyk.io/public/helm/charts/. You can also find the Tyk OSS Helm chart in [ArtifactHUB](https://artifacthub.io/packages/helm/tyk-helm/tyk-headless "ArtifactHUB Tyk OSS Gateway").

When ready, follow the steps below to prepare your cluster for installation:

1. Add the Tyk official Helm repo
`helm repo add tyk-helm https://helm.tyk.io/public/helm/charts/` {{execute}}
2. Update the repo for the latest information from the chart repositories as information is cached locally.
`helm repo update` {{execute}}
3. Although not essential, we do recommend creating a namespace for your Tyk deployment
`kubectl create namespace tyk` {{execute}}