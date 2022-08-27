resource "aws_s3_bucket" "bucket" {
  bucket = "bose-infra-tfstate"

  tags = {
    Name        = "Dev Terraform State Info"
    Environment = "Dev"
  }
}
