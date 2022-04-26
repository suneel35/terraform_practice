 provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATJTVDTJNLF5I5SXW"
  secret_key = "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"
  #version    = "~> 2.7"
 }
/*
 resource "aws_security_group" "sg" {
   name ="sg"
   ingress {
    from_port         = 22
    to_port           = 22
    protocol          = "tcp"
   cidr_blocks       = ["0.0.0.0/0"]
 }
  ingress {
   from_port         = 80
   to_port           = 80
   protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  }
  ingress {
   from_port         = 443
   to_port           = 443
   protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  }
 }
*/
