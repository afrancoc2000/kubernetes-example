##Commands

#Kubernets
kubectl get services // list kubernets services
kubectl get pods // List all pods
kubectl run ip-master --image=afrancoc2000/hi-ip:v2  --port=8081 --replicas=3 // create kubernets pods
kubectl expose deployment ip-master --name=ip-service --type=LoadBalancer // expose the app throuth kubernets service

#Docker
docker build -t afrancoc2000/hi-ip:v2 .
docker push afrancoc2000/hi-ip:v2
docker ps
docker images
docker run -d -p 8080:80 -name anitapp hi-ip

##Examples
kubectl run hello-world --replicas=2 --labels="run=load-balancer-example" --image=gcr.io/google-samples/node-hello:1.0  --port=8083
kubectl get deployments hello-world
kubectl describe deployments hello-world
kubectl get replicasets
kubectl describe replicasets
kubectl expose deployment hello-world --type=NodePort --name=example-service
kubectl describe services example-service 
kubectl get pods --selector="run=load-balancer-example" --output=wide
kubectl delete services example-service
kubectl delete deployment hello-world