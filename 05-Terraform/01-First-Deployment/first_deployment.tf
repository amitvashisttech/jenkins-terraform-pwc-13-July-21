# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}


resource "aws_instance" "web" {
  ami           = "ami-058b1b7fe545997ae"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
