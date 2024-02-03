kubectl create -f https://k8s.io/examples/application/job/cronjob.yaml

kubectl get cronjob hello

kubectl get jobs --watch

pods=$(kubectl get pods --selector=job-name=hello-28311683 --output=jsonpath={.items[*].metadata.name})

kubectl logs $pods

kubectl delete cronjob hello