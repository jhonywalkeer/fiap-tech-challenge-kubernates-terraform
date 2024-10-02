module "eks" {
  source = "./modules/management/eks"

  eks_cluster_name = var.eks_cluster_name
  kubernetes_version = var.kubernetes_version
  private_subnet_1a = module.subnet.private_subnet_1a
  private_subnet_1b = module.subnet.private_subnet_1b
}

module "node" {
  source = "./modules/management/node"

  eks_cluster_name = var.eks_cluster_name
  subnet01 = module.subnet.subnet01
  subnet02 = module.subnet.subnet02
  subnet03 = module.subnet.subnet03
}

module "api_gateway" {
  source = "./modules/network/api-gateway"
  
  vpc_id = module.security_group.vpc_id
  eks_cluster_name = var.eks_cluster_name
  subnet01 = module.subnet.private_subnet_1a
  subnet02 = module.subnet.private_subnet_1b
}

module "elastic_ip" {
  source = "./modules/network/elastic-ip"

  eks_cluster_name = var.eks_cluster_name
}

module "nat_gatewey" {
  source = "./modules/network/nat-gateway"

  eks_cluster_name = var.eks_cluster_name
}

module "route-table" {
  source = "./modules/network/route-table"

  vpc_id = module.security_group.vpc_id
  vpc_cidr_block = module.security_group.vpc_cidr_block
  eks_cluster_name = var.eks_cluster_name 
}

module "security_group" {
  source = "./modules/network/security-group"
}

module "subnet" {
  source = "./modules/network/subnet"

  aws_region = var.aws_region
  eks_cluster_name = var.eks_cluster_name
  vpc_id = module.security_group.vpc_id
  vpc_cidr_block = module.security_group.vpc_cidr_block
}

module "iam" {
  source = "./modules/security/"
}