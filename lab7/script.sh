kubectl create configmap game-config --from-file=./configmap/
kubectl describe configmaps game-config
kubectl get configmaps game-config -o yaml

kubectl create configmap game-config-2 --from-file=./configmap/game.properties
kubectl describe configmaps game-config-2

kubectl create configmap game-config-2 --from-file=./configmap/game.properties --from-file=./configmap/ui.properties
kubectl describe configmaps game-config-2

kubectl create configmap game-config-env-file --from-env-file=./configmap/game-env-file.properties
kubectl get configmap game-config-env-file -o yaml

kubectl create configmap config-multi-env-files --from-env-file=./configmap/game-env-file.properties --from-env-file=./configmap/ui-env-file.properties
kubectl get configmap config-multi-env-files -o yaml

kubectl create configmap game-config-3 --from-file=game-special-key=./configmap/game.properties
kubectl get configmaps game-config-3 -o yaml

kubectl create configmap special-config --from-literal=special.how=very --from-literal=special.type=charm
kubectl get configmaps special-config -o yaml

kubectl apply -k .
kubectl describe configmaps/game-config-4-fb65m6gk5t

kubectl apply -k .
kubectl describe configmaps/game-config-5-dm7tfchmt4

kubectl apply -k .
kubectl describe configmaps/special-config-2-2b86tk8fhm




