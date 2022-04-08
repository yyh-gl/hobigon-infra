module "k8s" {
  source  = "terraform-aws-modules/eks/aws"
  version = "18.19.0"

  cluster_name    = "hobigon-cluster"
  cluster_version = "1.22"
  subnet_ids      = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id
}
