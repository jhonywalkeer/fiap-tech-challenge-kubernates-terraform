variable "vpc_id" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "private_route_prefix" {
  type = string
  default = "%s-private-route"
}

variable "eks_cluster_name" {
  type        = string
}

variable "route_prefix" {
  type = string
  description = "The prefix of the route"
  default = "%s-route"
}