resource "aws_eip" "eks_eip" {

  tags = {
    "Name" = format(var.eip_prefix, var.eks_cluster_name)
  }
}