## Build image

docker build -t mwaijohng/static:1.0 .

## Create a deployment

kubectl apply -f app-deployment.yaml


For minikube use ```eval $(minikube docker-env)``` before building image