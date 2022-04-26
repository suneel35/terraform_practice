resource "aws_instance" "ec2" {
 ami           = "ami-00ee4df451840fa9d" # us-west-2
 #availability_zone = "us-west-2a"
 instance_type = "t2.micro"
 key_name = "AWS"

 provisioner "local-exec" {
  command = "echo ${aws_instance.ec2.private_ip} >> private_ips.txt"
 }
 }
