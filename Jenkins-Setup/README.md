# Jenkins Deployment to Kubernetes

## create Namespace

```bash
kubectl create ns jenkins
```

## deploy Jenkins

```bash
kubectl apply -f jenkins-deployment.yaml --namespace=jenkins
```

## deploy Service

```bash
kubectl create -f jenkins-service.yaml --namespace=jenkins
```

## add Kubernetes cluster to Jenkins

navigate to “Manage Jenkins -> Configure System -> Cloud -> Kubernetes”

### get kubernetes URL

```bash
kubectl cluster-info | grep master
```

### get kubernetes auth token

```bash
aws-iam-authenticator token -i terraform-eks-demo
```

### get jenkins URL

```bash
kubectl get svc --namespace=jenkins
```