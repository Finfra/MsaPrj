#!/bin/bash
# kubectl delete deploy/nginx1; kubectl run nginx1 --image=nowage/nginx --port=80 -o yaml > /vagrant/MsaPrj/kubernetes/deploy.yaml
# kubectl scale deployment nginx --replicas=4
kubectl delete deploy/nginx1
kubectl create -f ./deploy.yaml

kubectl delete svc/nginx1
# kubectl expose deployment/nginx --type="NodePort" --port 80
kubectl create -f ./service.yaml

# kubectl delete deploy/nginx1