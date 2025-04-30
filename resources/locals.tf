locals {
  common_tags = {
    Name     = var.project_name
    Environment = var.environment
  }
}


#   tags = {
#     Name        = "${var.environment}-ec2"
#     Environment = var.environment 
#   }
# }