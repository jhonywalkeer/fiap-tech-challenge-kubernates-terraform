resource "aws_eks_node_group" "eks_node_group" {

  cluster_name    = var.eks_cluster_name
  node_group_name = format(var.node_prefix, var.eks_cluster_name)
  node_role_arn   = aws_iam_role.eks_node_role.arn

  subnet_ids = [
    var.subnet01,
    var.subnet02,
    var.subnet03
  ]

  scaling_config {
    desired_size = var.scaling_config["desired_size"]
    max_size     = var.scaling_config["max_size"]
    min_size     = var.scaling_config["min_size"]
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks_AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks_AmazonEC2ContainerRegistryReadOnly
  ]

}
