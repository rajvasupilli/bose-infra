terraform {
  backend "s3" {
    bucket = "bose-infra-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

