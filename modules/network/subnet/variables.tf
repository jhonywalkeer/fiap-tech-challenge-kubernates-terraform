variable "vpc_id" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "subnet_availability_zone_prefix" {
  type = string
  default = "%s"  
}

variable "subnet_type" {
  type = string
  default = "shared"
}

variable "public_subnet_prefix" {
  type = string
  default = "%s-subnet-public-1"
}

variable "private_subnet_prefix" {
  type = string
  default = "%s-subnet-private-1"
}

variable "subnet01" {
  type = string
  description = "The first subnet ID"
  default     = "subnet-0a635f7feeef1a5e4"
}

variable "subnet02" {
  type = string
  description = "The second subnet ID"
  default     = "subnet-0ef6045943cde9504"
}

variable "subnet03" {
  type = string
  description = "The third subnet ID"
  default     = "subnet-0927648c135b99e3b"
}

variable "aws_region" {
  type = string
}

variable "eks_cluster_name" {
  type = string  
}

variable "kubenartes_cluster_base_domain" {
  type = string
  default = "kubernetes.io/cluster/"
}