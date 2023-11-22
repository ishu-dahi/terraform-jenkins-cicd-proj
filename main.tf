provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIARB3BHZBIMKBT4DU3"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-02a2af70a66af6dfb"
  instance_type = "t2.micro"

  tags = {
    Name = "jenkins-practical-terraform-server"
  }
}