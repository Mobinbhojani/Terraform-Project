module "vpc" {
  source = "../modules/vpc"

  cidr_block            = var.cidr_block 
  sub1-cidr_block       = var.sub1-cidr_block
  sub2-cidr_block       = var.sub2-cidr_block
  vpc-name              = var.vpc-name
  internet-gateway-name = var.internet-gateway-name
  vpc-sub1-name         = var.vpc-sub1-name
  vpc-sub2-name         = var.vpc-sub2-name
  security-group-name   = var.security-group-name 
  port_numbers_ingress  = var.port_numbers_ingress 
  port_numbers_egress   = var.port_numbers_egress

}