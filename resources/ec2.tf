module "ec2" {
  source = "../modules/ec2/"
  
  instance-type         = var.instance-type
  ami-id                = var.ami-id
  instance-name         = local.instance_name
  key-name              = var.key-name
  subnet_id             = module.vpc.public_subnet_id
  security_group_ids    = [module.vpc.sg_id]
  environment           = var.environment
  tags                  = local.common_tags

}