terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.61" # Use a known, compatible version
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
