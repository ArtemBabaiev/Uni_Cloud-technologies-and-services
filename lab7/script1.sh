kubectl create configmap special-config --from-literal=special.how=very
kubectl create -f https://kubernetes.io/examples/pods/pod-single-configmap-env-variable.yaml

kubectl create -f https://kubernetes.io/examples/configmap/configmaps.yaml
kubectl create -f https://kubernetes.io/examples/pods/pod-multiple-configmap-env-variable.yaml


kubectl create -f https://kubernetes.io/examples/configmap/configmap-multikeys.yaml
kubectl create -f https://kubernetes.io/examples/pods/pod-configmap-envFrom.yaml
kubectl delete pod dapi-test-pod --now

kubectl create -f https://kubernetes.io/examples/configmap/configmap-multikeys.yaml
kubectl create -f https://kubernetes.io/examples/pods/pod-configmap-env-var-valueFrom.yaml
kubectl delete pod dapi-test-pod --now

kubectl create -f https://kubernetes.io/examples/configmap/configmap-multikeys.yaml
kubectl create -f https://kubernetes.io/examples/pods/pod-configmap-volume.yaml
kubectl delete pod dapi-test-pod --now

kubectl create -f https://kubernetes.io/examples/pods/pod-configmap-volume-specific-key.yaml