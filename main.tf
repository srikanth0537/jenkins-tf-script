terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region = var.region
  AWS_ACCESS_KEY_ID = "AKIAYTTWTVBTZOYIGC64"
  AWS_SECRET_ACCESS_KEY = "iPecpg7ErIidEz/J/4Cj549mScGLhZVUTkPXKph5"
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "sample-web-server"
  }

}
