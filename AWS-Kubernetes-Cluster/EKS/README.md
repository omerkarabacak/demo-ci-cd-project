# EKS (Amazon Elastic Container Service for Kubernetes)

## Prerequisites

* Terraform v0.11.3 or higher
* Terraform provider.aws v1.28.0 (will be auto installed with terraform init command)
* Terraform provider.http v1.0.1 (will be auto installed with terraform init command)
* awscli
* kubectl v1.11 or higher

## How to setup EKS

```bash
terraform init
terraform plan
terraform apply
```

### kubectl config

* create ~/.kube/config-aws with information from "terraform output" command
* export KUBECONFIG=$KUBECONFIG:~/.kube/config-aws
* echo 'export KUBECONFIG=$KUBECONFIG:~/.kube/config-aws' >> ~/.bashrc
* aws sts get-caller-identity

### config-map-aws-auth.yaml file (for worker nodes)

* create file from "terraform output" command
* kubectl apply -f config-map-aws-auth.yaml

## AWS key security

For security reason I have added amazon-keys.tf to .gitignore file.
You have to create your own amazon-keys.tf file.

### amazon-keys.tf example

```json
variable "aws_access_key" {
  default = "<YOUR ACCESS KEY>"
  type    = "string"
}

variable "aws_secret_key" {
  default = "<YOUR SECRET KEY>"
  type    = "string"
}
```

## To access EKS from your local machine

There is workstation-external-ip.tf file and it is used for getting local computer public IP.
