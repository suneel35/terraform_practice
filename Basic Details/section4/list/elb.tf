/*
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATJTVDTJNLF5I5SXW"
  secret_key = "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"
  #version    = "~> 2.7"
}

resource "aws_iam_user" "suneel" {
  #name = "demouser"
  name = var.usernumber
  path = "/system"
}
*/
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATJTVDTJNLF5I5SXW"
  secret_key = "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"
  #version    = "~> 2.7"
}

resource "aws_elb" "bar" {
  name               = var.elb_name
  availability_zones = var.az

  access_logs {
    bucket        = "foo"
    bucket_prefix = "bar"
    interval      = 60
  }

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  listener {
    instance_port      = 8000
    instance_protocol  = "http"
    lb_port            = 443
    lb_protocol        = "https"
    ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  tags = {
    Name = "foobar-terraform-elb"
  }
}
