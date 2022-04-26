resource "aws_instance" "ec2" {
 ami           = "ami-00ee4df451840fa9d" # us-west-2
 #availability_zone = "us-west-2a"
 instance_type = "t2.micro"
 key_name = "AWS"

 provisioner "remote-exec" {
  inline = [
    "sudo amazon-linux-extras install -y nginx1.12",
    "sudo systemctl start nginx"
   ]
   connection {
     type = "ssh"
     host = self.public_ip
     user = "ec2-user"
     private_key = "${file("./AWS.pem")}"
   }
  }
 }
