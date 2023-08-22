module "ec2" {
  source                      = "terraform-aws-modules/ec2-instance/aws"
  name                        = "ec2-default"
  ami                         = "ami-091a58610910a87a9"
  associate_public_ip_address = true
  instance_type               = "t2.micro"
  key_name                    = module.key.key_pair_name
  monitoring                  = true
  vpc_security_group_ids      = [module.sc-group.security_group_id]
  subnet_id                   = element(module.vpc.public_subnets, 0)
  tags                        = var.tags
}