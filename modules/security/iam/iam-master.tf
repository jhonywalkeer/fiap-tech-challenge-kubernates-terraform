resource "aws_iam_role" "eks_master_role" {
  description = "EKS cluster master IAM role"
  name = format(var.iam_eks_master_prefix, var.eks_cluster_name)

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "eks_cluster_cluster" {
  policy_arn = var.iam_cluster_policy_arn
  role       = aws_iam_role.eks_master_role.name
}

resource "aws_iam_role_policy_attachment" "eks_cluster_service" {
  policy_arn = var.iam_cluster_service_arn
  role       = aws_iam_role.eks_master_role.name
}