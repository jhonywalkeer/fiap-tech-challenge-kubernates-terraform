variable "eks_cluster_name" {
  type = string
}

variable "subnet01" {
  type = string
}

variable "subnet02" {
  type = string
}

variable "subnet03" {
  type = string
}

variable "scaling_config" {
  type = map
  description = "The scaling configuration for the EKS node group"
  default = {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }
  
}

variable "node_prefix" {
  type = string
  description = "The prefix of the EKS node group"
  default = "%s-node-group"
}