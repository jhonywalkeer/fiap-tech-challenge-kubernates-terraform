resource "aws_internet_gateway" "eks_ig" {
vpc_id = var.vpc_id

  tags = {
    Name = format(var.api_gateway_prefix, var.eks_cluster_name)
  }
}

