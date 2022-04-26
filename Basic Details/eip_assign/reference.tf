provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATJTVDTJNLF5I5SXW"
  secret_key = "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"
  #version    = "~> 2.7"
}


resource "aws_instance" "suneel" {
  ami           = "ami-00ee4df451840fa9d" # us-west-2
  instance_type = "t2.micro"

  tags = {
    Name = "cvsuneel"
  }
  }

resource "aws_eip" "suneel" {
  vpc      = true
  tags = {
    Name = "cvsuneel"
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id = aws_instance.suneel.id
  allocation_id = aws_eip.suneel.id
}

resource "aws_security_group" "sg" {
  name ="sg"
  ingress {
   from_port         = 22
   to_port           = 22
   protocol          = "tcp"
  #cidr_blocks       = ["0.0.0.0/0"]
   cidr_blocks       = ["${aws_eip.suneel.public_ip}/32"]
}
}

 