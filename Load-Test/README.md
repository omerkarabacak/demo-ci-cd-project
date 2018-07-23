# Load test helloworld application

## k6 load test script

```
loadtest.js
```

### K6 image with loadtest.js

```
gupguru/loadtest
```

## Kubernetes scheduler for scheduled load testing

```
loadtest-schedule.yaml
```

### how to deploy to Kubernetes

```bash
kubectl create -f loadtest-schedule.yaml
```

## Kubernetes auto scale

```bash
kubectl autoscale deployment helloworld --max=5 --cpu-percent=80 --namespace=helloworld
```