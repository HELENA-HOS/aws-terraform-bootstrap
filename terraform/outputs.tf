
output "bucket_name" {
  description = "Nome do bucket S3 utilizado como backend remoto."

  value = aws_s3_bucket.terraform_state.bucket
}

output "bucket_arn" {
  description = "ARN do bucket S3."

  value = aws_s3_bucket.terraform_state.arn
}

output "bucket_region" {
  description = "Região onde o bucket foi provisionado."

  value = var.aws_region
}