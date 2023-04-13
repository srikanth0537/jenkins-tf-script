provider "aws" {
  region = var.region

}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count = 2

  tags = {
    Name = format("VM_%d", count.index)
  }

}
