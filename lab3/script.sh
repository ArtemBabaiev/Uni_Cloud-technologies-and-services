kind delete cluster --name psa-wo-cluster-pss
kind create cluster --name psa-wo-cluster-pss
kubectl config set current-context kind-psa-wo-cluster-pss
kubectl label --dry-run=server --overwrite ns --all pod-security.kubernetes.io/enforce=baseline



kind delete cluster --name psa-with-cluster-pss
kind create cluster --name psa-with-cluster-pss --config /c/MyData/Workspaces/CTaS/lab3/cluster-config.yaml
kubectl config set current-context kind-psa-with-cluster-pss
kubectl apply -f https://k8s.io/examples/security/example-baseline-pod.yaml