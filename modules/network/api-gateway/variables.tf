variable "api_gateway_prefix" {
  type = string
  description = "The prefix of the API Gateway"
  default = "%s-api-gateway"
}

variable "eks_cluster_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet01" {
  type = string
}

variable "subnet02" {
  type = string
}