resource "aws_route_table" "eks_public_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.vpc_cidr_block
    gateway_id = aws_internet_gateway.eks_ig.id
  }

  tags = {
    Name = format(var.route_prefix, var.eks_cluster_name)
  }
}