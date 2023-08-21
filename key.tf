module "key" {
  source = "terraform-aws-modules/key-pair/aws"
  key_name   = "key-default"
  public_key = trimspace(tls_private_key.this.public_key_openssh)
}
