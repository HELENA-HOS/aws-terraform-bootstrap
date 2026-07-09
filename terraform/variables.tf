
variable "aws_region" {
  description = "Região da AWS onde os recursos serão provisionados."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome do projeto a ser criado."
  type        = string
  default     = "terraform-bootstrap"
}

variable "repository_url" {
  type = string
}

variable "bucket_name" {
  description = "Nome do bucket S3 utilizado como backend remoto para armazenar os arquivos Terraform State."
  type        = string
}

variable "environment" {
  description = "Ambiente de implantação (ex: dev, staging, prod)."
  type        = string
  default     = "dev"
}