## backend data for terraform
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.12.24"

  backend "s3" {
    bucket = "cloudquickpocsbackendtf"
    key    = "quickcloudpocsbackend_2.tfstate"
    region = "ap-southeast-1"
  }
}

## random provider
provider "random" {}

## Provider ap-southeast-1
provider "aws" {
  region = "ap-southeast-1"
}

