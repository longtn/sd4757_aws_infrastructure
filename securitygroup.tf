module "sc-group" {
  source = "terraform-aws-modules/security-group/aws"
  name        = "group-default"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = module.vpc.vpc_id
  ingress_cidr_blocks = ["10.10.0.0/16"]
}
