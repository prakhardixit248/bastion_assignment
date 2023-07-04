terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=5.0.0" # Replace with the desired version
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "prakhar-s3-cicd-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}