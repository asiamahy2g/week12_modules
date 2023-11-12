terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
    }

  }
}

provider "aws" {
  region  = var.region
  profile = "default"


}

resource "aws_instance" "ec2-demo" {
  ami = var.ami

  instance_type = var.instance_type
  tags = {
    Name = var.Name
    env  = "Dev"
  }
}