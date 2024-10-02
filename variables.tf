variable "aws_region" {
  description = "The AWS region to deploy the resources"
  default     = "us-east-1"
}

variable "project_tags" {
  description = "The tags to be applied to the resources"
  type        = map(string)
  default = {
    Name        = "fiap-tech-challenge-k8s"
    Environment = "dev"
  }
}

variable "eks_cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
  default = "eks_cluster_fiap_tech_challenge"
}

variable "project_name" {
  description = "The name of the project"
  default     = "fiap-tech-challenge"
}

variable "kubernetes_version" {
  type        = string
  description = "The version of Kubernetes to use for the EKS cluster"
  default     = "1.29"
}