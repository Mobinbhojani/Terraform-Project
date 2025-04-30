locals {
  instance_name = "${var.project_name}-${var.environment}-ec2"
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraformm"
  }
}
