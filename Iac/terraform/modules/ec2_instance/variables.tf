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

variable "instance_ami" {
  type        = string
  description = ""
}

variable "instance_type" {
  type        = string
  description = ""
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name              = "WebServer"
    Environment       = "dev"
    ManagedBy         = "Terraform"
    CreatedBy         = "João Frois"
    UpdateAt          = "2021-10-06"
    Description       = "Ec2 intance"
    Project           = "Replicação cientifica"
    OperationalSystem = "Amazon Linux 2"
  }
}
