provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAWRUR7WKET46KGSKL"
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
