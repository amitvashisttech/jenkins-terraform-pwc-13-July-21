# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}


resource "aws_instance" "frontend" {

  # Amazon Linux AMI
  ami           = "ami-058b1b7fe545997ae"
  # Ubuntu 16.04 AMI 
  #ami           = "ami-038d7b856fe7557b3"
  instance_type = "t2.micro"
  depends_on    = [aws_instance.backend]

  lifecycle {
     create_before_destroy = true
  }

}


resource "aws_instance" "backend" {
  count  = 1 
  ami           = "ami-058b1b7fe545997ae"
  instance_type = "t2.micro"

  lifecycle {
    prevent_destroy = false
  }
}


