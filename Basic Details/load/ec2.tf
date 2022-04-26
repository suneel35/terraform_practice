 resource "aws_instance" "ec2" {
  ami           = "ami-00ee4df451840fa9d" # us-west-2
  availability_zone = "us-west-2a"
  instance_type = "t2.micro"
  }

  resource "aws_instance" "newec2" {
   ami           = "ami-00ee4df451840fa9d" # us-west-2
   availability_zone = "us-west-2a"
   instance_type = "t2.micro"
   }
