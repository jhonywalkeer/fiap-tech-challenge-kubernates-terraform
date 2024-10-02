resource "aws_nat_gateway" "eks_nat_gw" {
  allocation_id = aws_eip.eks_eip.id
  subnet_id     = aws_subnet.eks_subnet_public_1a.id

  tags = {
    Name = format(var.nat_gateway_prefix, var.eks_cluster_name)
  }
}