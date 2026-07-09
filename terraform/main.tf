
resource "aws_s3_bucket" "terraform_state" {

    bucket = var.bucket_name

    tags = local.common_tags

}

# Impede que o bucket seja exposto publicamente
resource "aws_s3_bucket_public_access_block" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

# Habilita criptografia em repouso (Server-Side Encryption) utilizando AES256.
resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {

  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}