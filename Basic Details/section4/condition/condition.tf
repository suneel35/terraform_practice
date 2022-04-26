provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATJTVDTJNLF5I5SXW"
  secret_key = "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"
  #version    = "~> 2.7"
 }

variable "istest"{
}
 resource "aws_instance" "dev" {
   ami           = "ami-00ee4df451840fa9d" # us-west-2
   instance_type = "t2.nano"
   count = var.istest == true ? 1 :0

   #instance_type = var.list[0]
   }

  resource "aws_instance" "prod" {
     ami           = "ami-00ee4df451840fa9d" # us-west-2
     instance_type = "t2.medium"
     count = var.istest == false ? 1 :0
     #instance_type = var.list[0]
     }
