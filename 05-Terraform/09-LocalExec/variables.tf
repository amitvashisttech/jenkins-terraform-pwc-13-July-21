variable "key_name" {
  default = "terraform-av-keypair"
}

variable "pvt_key_name" {
  default = "/root/.ssh/my-key.pem"
}


variable "sg_id" {
  default = "sg-0a35d32137f26e61b"
}


variable "ami" {
  default = "ami-038d7b856fe7557b3"
}


variable "region" {
  default = "eu-west-1"
}
