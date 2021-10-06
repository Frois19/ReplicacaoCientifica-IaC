variable "aws_access_key" {
  type        = string
  description = ""
}

variable "aws_secret_key" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""
}

variable "aws_profile" {
  type        = string
  description = ""
}

variable "bucket_name" {
  type        = string
  description = ""
}

variable "bucket_acl" {
  type        = string
  description = ""
}

variable "bucket_tags" {
  type        = map(string)
  description = ""
  default = {
    Name        = "BucketWebServer"
    Environment = "dev"
    ManagedBy   = "Terraform"
    CreatedBy   = "João Frois"
    UpdateAt    = "2021-10-06"
    Description = "Bucket S3"
    Project     = "Replicação cientifica"
  }
}
