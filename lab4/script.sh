minikube start
kubectl config set current-context minikube

#CREATE
kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1
deployment.apps/kubernetes-bootcamp created
kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080
minikube service kubernetes-bootcamp --url

#UPDATE
kubectl label pods "kubernetes-bootcamp-855d5cc575-jzpc2" customL=v1
kubectl describe pods kubernetes-bootcamp-855d5cc575-jzpc2


#SET
kubectl create service clusterip my-svc --clusterip="None" -o yaml --dry-run=client | kubectl set selector --local -f - 'environment=qa' -o yaml | kubectl create -f -

#EDIT
kubectl create service clusterip my-svc --clusterip="None" -o yaml --dry-run=client > C:/MyData/Workspaces/CTaS/lab4/srv.yaml
kubectl create --edit -f C:/MyData/Workspaces/CTaS/lab4/srv.yaml

#DELETE
kubectl delete service -l app=kubernetes-bootcamp