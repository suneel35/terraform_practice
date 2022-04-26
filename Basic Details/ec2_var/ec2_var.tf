provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATJTVDTJNLF5I5SXW"
  secret_key = "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"
  #version    = "~> 2.7"
}

resource "aws_instance" "suneel" {
  ami           = "ami-00ee4df451840fa9d" # us-west-2
  instance_type = var.instancetype
}
