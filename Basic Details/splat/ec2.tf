provider "aws" {
 region     = "us-west-2"
 access_key = "AKIATJTVDTJNLF5I5SXW"
 secret_key = "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"
 #version    = "~> 2.7"
}

resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path ="/system"
}

output "arns" {
  value = aws_iam_user.lb[0].arn
 }
