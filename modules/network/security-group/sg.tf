resource "aws_security_group_rule" "eks_sg_ingress_rule" {
  description = "Allow inbound traffic from VPC CIDR"
  cidr_blocks = [var.vpc_cidr_block]
  from_port   = var.security_group_port
  to_port     = var.security_group_port
  protocol    = var.security_group_protocol

  security_group_id = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
  type              = var.security_group_type
}
