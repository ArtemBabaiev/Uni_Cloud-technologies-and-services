minikube start
kubectl config set current-context minikube

kubectl apply -f ./example-redis-config.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/website/main/content/en/examples/pods/config/redis-pod.yaml
kubectl describe configmap/example-redis-config
kubectl get pod/redis configmap/example-redis-config