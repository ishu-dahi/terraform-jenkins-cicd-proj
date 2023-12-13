provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAWRUR7WKE7ZD54JEX"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-cicd-created-server"
  }
}
resource "aws_vpc" "main" {
  cidr_block       = "172.30.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "terraform-cicd-created-vpc"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1a"
  size              = 40

  tags = {
    Name = "terraform-created-ebs"
  }
}