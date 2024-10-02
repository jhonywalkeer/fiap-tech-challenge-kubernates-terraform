resource "aws_route_table" "eks_nat_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block     = var.vpc_cidr_block
    nat_gateway_id = aws_nat_gateway.eks_nat_gw.id
  }

  tags = {
    Name = format(var.private_route_prefix, var.eks_cluster_name)
  }
}