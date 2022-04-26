provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATJTVDTJNLF5I5SXW"
  secret_key = "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"
  #version    = "~> 2.7"
}

resource "aws_instance" "suneel" {
  ami           = "ami-00ee4df451840fa9d" # us-west-2
  instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  instance = aws_instance.suneel.id
  vpc = true
}

resource "aws_security_group" "sg" {
  name ="allow_tls"

  ingress {
    description = "tls from vpc"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [0.0.0.0/0]
  }
}

#graph.dot
#cat graph.dot | dot -Tsvg > graph.svg
