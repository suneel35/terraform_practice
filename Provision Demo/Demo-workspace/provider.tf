provider "aws" {
 region     = "us-west-2"
 access_key = "AKIATJTVDTJNLF5I5SXW"
 secret_key = "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"
 #version    = "~> 2.7"
}

resource "aws_instance" "myweb" {
 ami           = "ami-00ee4df451840fa9d" # us-west-2
 #availability_zone = "us-west-2a"
 instance_type = lookup(var.instance_type,terraform.workspace)
 key_name = "AWS"

}

variable "instance_type" {
  type = map
  default = {
    default = "t2.small"
    dev     = "t2.micro"
    prod    = "t3.medium"
  }
}
