locals {

  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    Provisioned = "Terraform"
    Repository  = var.repository_url

  }


}