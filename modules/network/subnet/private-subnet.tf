resource "aws_subnet" "eks_subnet_private_1a" {

vpc_id                  = var.vpc_id
cidr_block              = var.vpc_cidr_block
availability_zone = format("${var.subnet_availability_zone_prefix}a", var.aws_region)

  tags = {
    Name                                        = format("${var.private_subnet_prefix}a", var.eks_cluster_name)
    "${var.kubenartes_cluster_base_domain}${var.eks_cluster_name}" = var.subnet_type
  }

}

resource "aws_subnet" "eks_subnet_private_1b" {

vpc_id                  = var.vpc_id
cidr_block              = var.vpc_cidr_block
availability_zone = format("${var.subnet_availability_zone_prefix}b", var.aws_region)

  tags = {
    Name                                        = format("${var.private_subnet_prefix}b", var.eks_cluster_name)
    "${var.kubenartes_cluster_base_domain}${var.cluster_name}" = var.subnet_type
  }

}

resource "aws_route_table_association" "eks_private_rt_association_1a" {
  subnet_id      = aws_subnet.eks_subnet_private_1a.id
  route_table_id = aws_route_table.eks_nat_rt.id
}

resource "aws_route_table_association" "eks_private_rt_association_1b" {
  subnet_id      = aws_subnet.eks_subnet_private_1b.id
  route_table_id = aws_route_table.eks_nat_rt.id
}