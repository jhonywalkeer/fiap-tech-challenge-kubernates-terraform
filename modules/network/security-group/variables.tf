variable "vpc_id" {
  type = string
  description = "The VPC ID"
  default = "vpc-0fbc5db95c8c95174"
  
}

variable "vpc_cidr_block" {
  type = string
  description = "The CIDR block of the VPC"
  default     = "0.0.0.0/0"
}

variable "security_group_port" {
  type = number
  description = "The port of the security group"
  default     = 443
  
}

variable "security_group_protocol" {
  type = string
  description = "The protocol of the security group"
  default     = "tcp"
}

variable "security_group_type" {
  type = string
  description = "The type of the security group"
  default     = "ingress"
}
