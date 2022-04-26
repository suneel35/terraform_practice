/* without variable
resource "aws_instance" "myweb" {
 ami           = "ami-00ee4df451840fa9d" # us-west-2
 #availability_zone = "us-west-2a"
 instance_type = "t2.micro"
 key_name = "AWS"
 }
 */
 resource "aws_instance" "myweb" {
  ami           = "ami-00ee4df451840fa9d" # us-west-2
  #availability_zone = "us-west-2a"
  #instance_type = var.instance_type  /* this is override  */
  instance_type = "t3.large"   /* this is not override  */
  key_name = "AWS"
  }
