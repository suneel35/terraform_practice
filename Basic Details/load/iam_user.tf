
resource "aws_iam_user" "suneel" {
  name = var.iam_user
  path = "/system"
}
