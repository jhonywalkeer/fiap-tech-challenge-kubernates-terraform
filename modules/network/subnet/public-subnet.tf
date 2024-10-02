resource "aws_subnet" "eks_subnet_public_1a" {

vpc_id                  = var.vpc_id
cidr_block              = var.vpc_cidr_block
availability_zone       = format("${var.subnet_availability_zone_prefix}a", var.aws_region)
map_public_ip_on_launch = true

  tags = {
    Name                                        = format("${var.public_subnet_prefix}a", var.eks_cluster_name)
    "${var.kubenartes_cluster_base_domain}${var.eks_cluster_name}" = var.subnet_type
  }

}

resource "aws_subnet" "eks_subnet_public_1b" {
vpc_id                  = var.vpc_id
cidr_block              = var.vpc_cidr_block
availability_zone       = format("${var.subnet_availability_zone_prefix}b",  var.aws_region)
map_public_ip_on_launch = true

  tags = {
    Name                                        = format("${var.public_subnet_prefix}b", var.eks_cluster_name)
    "${var.kubenartes_cluster_base_domain}${var.cluster_name}" = var.subnet_type
  }
}

resource "aws_route_table_association" "eks_public_rt_association_1a" {
  subnet_id      = aws_subnet.eks_subnet_public_1a.id
  route_table_id = aws_route_table.eks_public_rt.id
}

resource "aws_route_table_association" "eks_public_rt_association_1b" {
  subnet_id      = aws_subnet.eks_subnet_public_1b.id
  route_table_id = aws_route_table.eks_public_rt.id
}