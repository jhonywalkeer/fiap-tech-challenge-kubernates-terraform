variable "eks_cluster_name" {
  type = string
}

variable "iam_eks_master_prefix" {
  type = string
  description = "The prefix of the IAM role for the EKS cluster"
  default = "%s-master-role"
}

variable "iam_cluster_policy_arn" {
  type = string
  description = "The ARN of the IAM policy for the EKS cluster"
  default = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  
}

variable "iam_cluster_service_arn" {
  type = string
  description = "The ARN of the IAM policy for the EKS service cluster"
  default = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
  
}

variable "iam_eks_node_prefix" {
  type = string
  description = "The prefix of the IAM role for the EKS node"
  default = "%s-node-role"
}