minikube ssh
sudo mkdir /mnt/data
sudo sh -c "echo 'Hello from Kubernetes storage' > /mnt/data/index.html"


kubectl apply -f https://k8s.io/examples/pods/storage/pv-volume.yaml

kubectl get pv task-pv-volume

kubectl apply -f https://k8s.io/examples/pods/storage/pv-claim.yaml

kubectl apply -f https://k8s.io/examples/pods/storage/pv-pod.yaml

apt update
apt install curl
curl http://localhost/

kubectl delete pod task-pv-pod
kubectl delete pvc task-pv-claim
kubectl delete pv task-pv-volume


sudo rm /mnt/data/index.html
sudo rmdir /mnt/data