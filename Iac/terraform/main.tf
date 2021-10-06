terraform {
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.44.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

provider "aws" {
  region     = var.aws_region
  profile    = var.aws_profile
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "ec2_instance" {
  source         = "./modules/ec2_instance"
  aws_region     = var.aws_region
  aws_profile    = var.aws_profile
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  instance_ami   = "ami-0d5eff06f840b45e9"
  instance_type  = "t2.micro"
}

module "s3_bucket" {
  source         = "./modules/s3_bucket"
  aws_region     = var.aws_region
  aws_profile    = var.aws_profile
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  bucket_name    = "bucket-terraform-replication"
  bucket_acl     = "private"
}