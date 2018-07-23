# Demo Project for CI/CD Pipeline

## Setting Up Kubernetes Cluster (AWS-Kubernetes-Cluster directory)

There is 2 setup one of them uses AWS EKS(Amazon Elastic Container Service for Kubernetes) directly and another one uses KOPS to create Kubernetes Cluster with EC2 instances.

### EKS

Setting up EKS with Terraform

### KOPS

// TODO

## Setup Jenkins on Kubernetes (Jenkins-Setup directory)

Jenkins Dockerfile generated and created a Jenkins image with related plugins installed.

## Load Test and Autoscale (Load-Test directory)

Load test with K6 and Kubernetes autoscale config

## Sonarqube Setup (Sonarqube-Setup directory)

Deploy Sonarqube and Sonarqube scan with docker container

## Helloworld Project

```url
https://github.com/omerkarabacak/dotnet-core-helloworld
```

## Monitoring and Alarm

// TODO
With Prometheus and Grafana we can create monitoring and alarm suit with thresholds or we can use TICK stack for that.

* TICK stack => Telegraf, InfluxDB, Chronograf, Kapacitor