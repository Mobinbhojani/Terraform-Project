region                = "ap-south-1"
cidr_block            = "10.0.0.0/16"
sub1-cidr_block       = "10.0.3.0/24"
sub2-cidr_block       = "10.0.4.0/24"
instance-type         = "t2.micro"
ami-id                = "ami-0e35ddab05955cf57"
vpc-name              = "terrafrom-vpc"
key-name              = "terraform-key"
security-group-name   = "terraform-sg"
internet-gateway-name = "terraform-ig"
vpc-sub1-name         = "terrafrom-vpc-pub-sub-1"
vpc-sub2-name         = "terrafrom-vpc-pub-sub-2"
port_numbers_ingress  = [80, 22]
port_numbers_egress   = [0]
# subnet_id             = module.vpc.public_subnet_id
# security_group_ids  = [module.security_group.sg_id]
environment = "prod" 
project_name = "terraform-project"