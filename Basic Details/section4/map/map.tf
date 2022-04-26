provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATJTVDTJNLF5I5SXW"
  secret_key = "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"
  #version    = "~> 2.7"
 }

resource "aws_instance" "suneel" {
  ami           = "ami-00ee4df451840fa9d" # us-west-2
  instance_type = var.types["ap-south-1"]
  #instance_type = var.list[0]
  }

variable "list" {
 type = list
 default = ["m5.large","r5.xlarge","t3.medium"]
}
variable "types" {
 type = map
 default = {
   us-west-1 = "t2.micro"
   ap-south-1 = "t3.medium"
   us-east-1 = "t2.nano"
 }
}
