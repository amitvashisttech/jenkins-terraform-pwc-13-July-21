# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  version = ">=3.7,<=3.11"
}


provider "aws" {
  region  = "eu-west-1"
  version = ">=3.7,<=3.11"
  alias   = "us-west-1"
}


resource "aws_instance" "frontend_east" {
  ami           = "ami-0dc2d3e4c0f9ebd18"
  instance_type = "t2.micro"
}



resource "aws_instance" "frontend_west" {
  count         = 1
  ami           = "ami-058b1b7fe545997ae"
  instance_type = "t2.micro"
  provider      = aws.us-west-1
}
