resource "aws_iam_user" "lb" {
  name  = "demo-iam-user"
  path  = "/system/"
}
