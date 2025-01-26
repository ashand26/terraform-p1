terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.77.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key =
  secret_key =
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-053b12d3152c0cc71"
  instance_type = "t2.micro"
  user_data     = file("apache.sh")
  tags = {
    Name = "Web Server"
  }

}
