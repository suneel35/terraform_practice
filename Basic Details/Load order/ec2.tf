
resource "aws_instance" "suneel" {
  ami           = "ami-00ee4df451840fa9d" # us-west-2
  availability_zone = "us-west-2a"
  instance_type = "t2.micro"
  }
