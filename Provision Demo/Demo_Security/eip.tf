/*
resource "aws_eip" "suneel" {
  vpc = "true"

}

resource "aws_eip" "eip2" {
  vpc ="true"
  provider = "aws.mumbai"
}
*/


resource "aws_eip" "suneel" {
  vpc = "true"

}

resource "aws_eip" "eip2" {
  vpc ="true"
  provider = "aws.aws02"
}
