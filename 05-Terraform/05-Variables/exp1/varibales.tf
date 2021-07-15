# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
  version = ">=3.7,<=3.11"
}

variable "zones" { 
 default = ["eu-west-1a", "eu-west-1b"]
}


resource "aws_instance" "frontend_east" {
  ami           = "ami-058b1b7fe545997ae"
  instance_type = "t2.micro"
  count         = 2 
  availability_zone = var.zones[count.index]
}

