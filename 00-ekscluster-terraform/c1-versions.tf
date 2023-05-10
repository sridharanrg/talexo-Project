terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.70"
     }
  }

  backend "s3" {
    bucket = "tf-remote-state-staging-talexo"
    key    = "dev/eks-cluster/terraform.tfstate"
    region = "us-west-2"
    access_key = "AKIAYBYB2IVDCGV5J667"
    secret_key = "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"
 
    # For State Locking
    dynamodb_table = "dev-ekscluster"    
  }  
}

# Terraform Provider Block
provider "aws" {
  region = var.aws_region
}