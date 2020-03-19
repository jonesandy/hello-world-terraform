# Comments left in for learning purposes

####
# VARIABLES
####

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name" {}
variable "region" {
  default = "us-east-1"
}

####
# PROVIDERS
####

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.region
}

####
# DATA
####

data "aws_ami" "aws-linux" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["amzn-ami-hvm*"]
  }

  filter {
    name = ["root-device-type"]
    values = ["ebs"]
  }

  filter {
    name = ["virtualization-type"]
    values = ["hvm"]
  }
}